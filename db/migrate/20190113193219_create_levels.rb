class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
