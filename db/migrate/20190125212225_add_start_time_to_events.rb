class AddStartTimeToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    add_column :events, :bookable_id, :integer
    add_column :events, :bookable_type, :string
  end
end
