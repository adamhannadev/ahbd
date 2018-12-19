class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.references :student, foreign_key: true
      t.datetime :lesson_date
      t.text :plan
      t.string :status

      t.timestamps
    end
  end
end
