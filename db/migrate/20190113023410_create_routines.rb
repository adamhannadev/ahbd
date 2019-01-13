class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.references :student, foreign_key: true
      t.string :level
      t.string :category
      t.string :dance
      t.text :description
      t.string :song

      t.timestamps
    end
  end
end
