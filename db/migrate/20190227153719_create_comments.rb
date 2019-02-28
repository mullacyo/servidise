class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.timestamps null: false

      t.belongs_to :user, foreign_key: true
      t.belongs_to :task, foreign_key: true
    end
  end
end
