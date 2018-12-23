class RemoveColumnsFromPackages < ActiveRecord::Migration[5.2]
  def change
    remove_column :packages, :lessons_used, :integer
    remove_column :packages, :lessons_remaining, :integer
  end
end
