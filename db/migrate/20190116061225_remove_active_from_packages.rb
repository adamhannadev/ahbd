class RemoveActiveFromPackages < ActiveRecord::Migration[5.2]
  def change
    remove_column :packages, :active, :string
  end
end
