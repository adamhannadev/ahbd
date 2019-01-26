class ChangeStartDateToStartTimeInLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :start_date, :start_time
  end
end
