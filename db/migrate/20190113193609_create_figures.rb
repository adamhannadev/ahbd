class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|
      t.string :title
      t.text :description
      t.references :level, foreign_key: true
      t.references :dance, foreign_key: true

      t.timestamps
    end
  end
end
