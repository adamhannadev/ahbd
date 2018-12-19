json.extract! lesson, :id, :student_id, :lesson_date, :plan, :status, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
