class IncomeRecord < ActiveRecord::Base
  attr_accessible :amount, :category_id, :comment, :date, :user_id
  belongs_to :category

  validates :date, presence: true
  validates :amount, presence: true
  validates :category_id, presence: true
end
