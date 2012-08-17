class User < ActiveRecord::Base
  attr_accessible :nickname, :email, :password, :password_confirmation

  has_secure_password
  has_many :authentications

  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true, format: {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
  validates :password, presence: true, length: 6..20, on: :create

  before_create { generate_token(:auth_token) }
  after_create { send_account_confirmation }

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def send_account_confirmation
    UserMailer.account_confirmation(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def add_auth(auth)
    authentications.create(:provider => auth[:provider],
                           :uid => auth[:uid])
  end

  class << self
    def from_auth(auth)
      locate_auth(auth) || locate_email(auth) || create_user_with_auth(auth)
    end

    def locate_auth(auth)
      Authentication.find_by_provider_and_uid(auth[:provider],
                                              auth[:uid]).try(:user)
    end

    def locate_email(auth)
      user = find_by_email(auth[:info][:email])
      return unless user
      user.add_auth(auth)
      user
    end

    def create_user_with_auth(auth)
      user = create!(
        :nickname => auth[:info][:nickname],
        :email => auth[:info][:email] || nil)
        Authentication.create!(:provider => auth[:provider],
                               :uid => auth[:uid], :user => user)
        return user
    end
  end
end
