class Category < ActiveRecord::Base
  has_ancestry

  attr_accessible :name
  has_many :incomes
  has_many :expenses

  validates :name, presence: true, uniqueness: true
end
