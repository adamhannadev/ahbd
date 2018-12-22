class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.references :student, foreign_key: true
      t.references :payment, foreign_key: true
      t.integer :lessons_used
      t.integer :lessons_remaining

      t.timestamps
    end
  end
end
