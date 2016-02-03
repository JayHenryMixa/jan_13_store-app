class RenameCatagory < ActiveRecord::Migration
  def change
    rename_table(:catagories, :categories)
  end
end
