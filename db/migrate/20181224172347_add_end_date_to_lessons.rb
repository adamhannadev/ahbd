class AddEndDateToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :end_date, :date
  end
end
