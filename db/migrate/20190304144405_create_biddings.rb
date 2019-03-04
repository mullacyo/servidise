class CreateBiddings < ActiveRecord::Migration[5.2]
  def change
    create_table :biddings do |t|
      t.float :price
      t.belongs_to :user
      t.belongs_to :task
    end
  end
end
