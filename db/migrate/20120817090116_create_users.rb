class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.string :auth_token
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.decimal  :balance, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end
end
