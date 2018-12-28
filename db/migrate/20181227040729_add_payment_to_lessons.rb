class AddPaymentToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :payment, foreign_key: true
  end
end
