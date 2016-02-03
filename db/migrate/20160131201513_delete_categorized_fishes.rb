class DeleteCategorizedFishes < ActiveRecord::Migration
  def change
    drop_table(:categorized_fishes)
  end
end
