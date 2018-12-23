class AddPackageRefToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :package, foreign_key: true
  end
end
