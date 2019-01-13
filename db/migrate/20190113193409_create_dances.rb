class CreateDances < ActiveRecord::Migration[5.2]
  def change
    create_table :dances do |t|
      t.string :title
      t.text :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
