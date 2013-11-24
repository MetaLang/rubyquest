class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :password
      t.text :email
      t.integer :session_id
      t.integer :inventory_id
      t.integer :room_id

      t.timestamps
    end
  end
end
