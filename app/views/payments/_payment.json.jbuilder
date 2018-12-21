json.extract! payment, :id, :student_id, :payment_date, :payment_type, :amount, :account, :created_at, :updated_at
json.url payment_url(payment, format: :json)
