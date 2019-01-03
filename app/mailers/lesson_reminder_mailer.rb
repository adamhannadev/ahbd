class LessonReminderMailer < ApplicationMailer
    default from: 'info@adamhannaballroom.com'
    
    def reminder(student)
    @student = student
    mail(to: @student.email, subject: 'Lesson Reminder')
    end

end
