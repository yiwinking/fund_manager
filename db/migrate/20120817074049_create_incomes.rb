class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.date     :date
      t.decimal  :amount, 
                 :precision => 8,
                 :scale => 2
      t.string   :comment
      t.integer  :category_id

      t.timestamps
    end
  end
end
