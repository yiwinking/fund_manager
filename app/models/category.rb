class Category < ActiveRecord::Base
  has_ancestry

  attr_accessible :name
  has_many :income_records
  has_many :expense_records

  validates :name, presence: true, uniqueness: true
end
