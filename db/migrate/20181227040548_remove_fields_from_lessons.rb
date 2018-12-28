class RemoveFieldsFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :occurrence, :string
    remove_column :lessons, :start_date, :string
    remove_column :lessons, :end_date, :string
  end
end
