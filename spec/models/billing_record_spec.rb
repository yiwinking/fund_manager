require 'spec_helper'

describe BillingRecord do
  describe 'associations' do
    it { should belong_to :category }
    it { should belong_to :user }
  end

  describe 'accessible' do
    [:amount, :category_id, :comment, :date, :user_id, :type].each do |c|
      it { should be_accessible(c) }
    end
  end

  describe 'db columns' do
    [:amount, :category_id, :comment, :date, :user_id, :type_cd].each do |c|
      it { should have_db_column(c) }
    end
  end

  describe 'methods' do
    describe '#type_cn' do
    end
  end
end
