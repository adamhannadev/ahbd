class ChangeLessonDateToStartDateInLessons < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :lesson_date, :start_date
  end
end
