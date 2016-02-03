class AddSupplierId < ActiveRecord::Migration
  def change
    add_column :fish, :supplier_id, :integer
  end
end
