class AddLessonsPurchasedToPackages < ActiveRecord::Migration[5.2]
  def change
    add_column :packages, :lessons_purchased, :integer
  end
end
