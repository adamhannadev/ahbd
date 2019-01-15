class ChangeActiveToString < ActiveRecord::Migration[5.2]
  def change
    change_column :packages, :active, :string
  end
end
