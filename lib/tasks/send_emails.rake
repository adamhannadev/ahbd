task :send_emails => :environment do
    @student = Student.find(14)
    LessonReminderMailer.reminder(@student).deliver
end
