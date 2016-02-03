class CreateCategorizeFishes < ActiveRecord::Migration
  def change
    create_table :categorize_fishes do |t|
      t.integer :fish_id
      t.integer :category_id

      t.timestamps
    end
  end
end
