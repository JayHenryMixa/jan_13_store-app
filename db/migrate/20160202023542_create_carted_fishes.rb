class CreateCartedFishes < ActiveRecord::Migration
  def change
    create_table :carted_fishes do |t|
      t.integer :user_id
      t.integer :fish_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps 
    end
  end
end
