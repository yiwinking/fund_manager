class ExpenseRecord < ActiveRecord::Base
  attr_accessible :amount, :category_id, :comment, :date, :user_id
  belongs_to :category

  validates :date, presence: true, uniqueness: true
  validates :amount, presence: true, uniqueness: true
  validates :category_id, presence: true, uniqueness: true
end
