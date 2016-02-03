class ChangeImageColumn < ActiveRecord::Migration
  def change
    change_table :fish do |t|
      t.change :price, :decimal, precision: 8, scale: 2  
      t.change :image, :text
    end
  end

end