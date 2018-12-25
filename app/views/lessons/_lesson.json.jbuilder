json.extract! lesson, :id, :student_id, :lesson_date, :end_date, :plan, :status, :created_at, :updated_at
json.title lesson.student.last_name
json.start lesson.lesson_date
json.end lesson.end_date
json.url lesson_url(lesson, format: :html)
