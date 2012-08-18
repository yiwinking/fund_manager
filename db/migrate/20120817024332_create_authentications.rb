class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id

      t.timestamps
    end

    add_index :authentications, :provider
    add_index :authentications, :uid
  end
end
