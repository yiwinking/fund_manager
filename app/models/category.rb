class Category < ActiveRecord::Base
  has_ancestry

  attr_accessible :name
  has_many :billing_records

  validates :name, presence: true, uniqueness: true
end
