class ChangeStartTimeToStartDateInEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :start_time, :start_date
  end
end
