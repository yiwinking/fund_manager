class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :incomes
  has_many :expenses
end
