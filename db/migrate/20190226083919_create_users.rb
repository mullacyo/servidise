class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.integer :phone
      t.string :email
      t.string :city
      t.integer :nric
      t.string :avatar
      t.integer :roles
      t.integer :tags
    end
  end
end
