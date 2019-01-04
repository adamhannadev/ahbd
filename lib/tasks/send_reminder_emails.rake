task :send_reminder_emails => :environment do
   Lesson.where(:lesson_date => Date.current+1..Date.current+2).each do |l|
        LessonReminderMailer.reminder(l).deliver
    end
end
