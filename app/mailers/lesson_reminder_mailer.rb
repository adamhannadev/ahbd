class LessonReminderMailer < ApplicationMailer
    default from: 'info@adamhannaballroom.com'
    
    def reminder(lesson)
        @lesson = lesson
    mail(to: @lesson.student.email, subject: 'Lesson Reminder')
    end

end
