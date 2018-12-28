class AddPaymentStatusToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :is_paid, :boolean
    add_column :lessons, :is_planned, :boolean
  end
end
