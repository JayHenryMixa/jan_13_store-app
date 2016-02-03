class RemoveImageFromColumn < ActiveRecord::Migration
  def change
    remove_column :fish, :image, :text
  end
end
