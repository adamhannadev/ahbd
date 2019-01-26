class RemoveBookableIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :bookable_id, :integer
    remove_column :events, :bookable_type, :string
  end
end
