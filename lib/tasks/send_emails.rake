task :send_emails => :environment do
    @student = Student.find(1)
    LessonReminderMailer.reminder(@student).deliver
end
