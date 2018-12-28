json.extract! lesson, :id, :student_id, :lesson_date, :plan, :created_at, :updated_at
json.title lesson.student.last_name
json.start lesson.lesson_date
json.url lesson_url(lesson, format: :html)
