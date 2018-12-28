class RemoveStatusFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :status, :string
  end
end
