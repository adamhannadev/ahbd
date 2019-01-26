class RemoveRecurringFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :recurring, :string
  end
end
