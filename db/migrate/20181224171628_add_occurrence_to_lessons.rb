class AddOccurrenceToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :occurrence, :integer
    add_column :lessons, :start_date, :date
  end
end
