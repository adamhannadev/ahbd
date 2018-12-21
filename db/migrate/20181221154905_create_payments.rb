class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :student, foreign_key: true
      t.date :payment_date
      t.string :payment_type
      t.decimal :amount
      t.string :account

      t.timestamps
    end
  end
end
