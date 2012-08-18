# -*- encoding: utf-8 -*-
class BillingRecord < ActiveRecord::Base
  attr_accessible :amount, :category_id, :comment, :date, :user_id, :type
  belongs_to :category
  belongs_to :user

  TYPES = [:expense, :income]
  TYPES_CN = {:expense => "支出", :income => "收入"}
  as_enum :type, TYPES

  validates :date, presence: true
  validates :amount, presence: true
  validates :category_id, presence: true
  validates :type_cd, presence: true
  validates :type, presence: true

  def type_cn
    TYPES_CN[type]
  end
end
