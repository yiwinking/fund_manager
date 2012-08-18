class BillingRecord < ActiveRecord::Base
  attr_accessible :amount, :category_id, :comment, :date, :user_id
  belongs_to :category
  belongs_to :user

  validates :date, presence: true
  validates :amount, presence: true
  validates :category_id, presence: true
  validates :type_cd, presence: true
end
