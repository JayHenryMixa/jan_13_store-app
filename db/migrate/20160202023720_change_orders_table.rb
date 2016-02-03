class ChangeOrdersTable < ActiveRecord::Migration
  def change
    remove_column :orders, :fish_id, :integer
    remove_column :orders, :quantity, :integer

  end
end
