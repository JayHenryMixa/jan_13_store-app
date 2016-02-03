class RenameCategorizeFishes < ActiveRecord::Migration
  def change
    rename_table(:categorize_fishes, :categorized_fishes)
  end
end
