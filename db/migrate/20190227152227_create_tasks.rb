class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.json :pictures
      t.float :price, null: false
      t.datetime :duedate
      t.string :location
      t.integer :tags
      t.boolean :completion_status, default: false
      t.boolean :payment_status, default: false
    end
  end
end
