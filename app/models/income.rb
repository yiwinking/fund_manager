class Income < ActiveRecord::Base
  attr_accessible :amount, :category_id, :comment, :date
  belongs_to :category
end
