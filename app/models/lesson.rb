class Lesson < ApplicationRecord
  belongs_to :student
  has_one :package, dependent: :destroy
  
   def start_time
        self.lesson_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
   end
   enum occurrence:  { weekly: 0, biweekly: 1, monthly: 2, annually: 3 }
   def schedule
   schedule = IceCube::Schedule.new(now = start_date)
   case occurrence
    when 'weekly'
        schedule.add_recurrence_rule IceCube::Rule.weekly(1)
    when 'biweekly'
        schedule.add_recurrence_rule IceCube::Rule.weekly(2)
    when 'monthly'
        schedule.add_recurrence_rule IceCube::Rule.monthly(1)
    when 'annually'
        schedule.add_recurrence_rule IceCube::Rule.yearly(1)
    end
   end
end
