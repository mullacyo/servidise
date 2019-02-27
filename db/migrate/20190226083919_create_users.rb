class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :gender
      t.integer :phone, null: false
      t.string :email, null: false
      t.string :city
      t.integer :nric, null: false
      t.string :avatar
      t.integer :roles, default: 0
      t.integer :tags
      t.timestamps null: false
    end
    add_index :users, :email
  end
end
