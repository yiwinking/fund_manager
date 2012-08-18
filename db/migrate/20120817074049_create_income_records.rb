class CreateIncomeRecords < ActiveRecord::Migration
  def change
    create_table :income_records do |t|
      t.date     :date
      t.decimal  :amount, :precision => 8, :scale => 2
      t.string   :comment
      t.integer  :category_id
      t.integer  :user_id

      t.timestamps
    end
  end
end
