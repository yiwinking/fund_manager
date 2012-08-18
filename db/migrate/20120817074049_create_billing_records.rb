class CreateBillingRecords < ActiveRecord::Migration
  def change
    create_table :billing_records do |t|
      t.date     :date
      t.decimal  :amount, :precision => 8, :scale => 2
      t.string   :comment
      t.integer  :category_id
      t.integer  :user_id
      t.integer  :type_cd

      t.timestamps
    end

    add_index :billing_records, :type_cd
    add_index :billing_records, :user_id
    add_index :billing_records, :category_id
  end
end
