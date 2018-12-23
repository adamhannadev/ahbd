class Lesson < ApplicationRecord
  belongs_to :student
  has_one :package, dependent: :destroy
   def start_time
        self.lesson_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
   end
end
