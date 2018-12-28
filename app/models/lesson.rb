class Lesson < ApplicationRecord
  belongs_to :student
  has_one :package
  has_one :payment
  before_save :set_status
  validates :lesson_date, presence: true
  
private
  def set_status
    if self.plan.present?
    self.is_planned = true
else
    self.is_planned = false
    end
    if self.payment_id || self.package_id
        self.is_paid = true
    else
        self.is_paid = false
    end
  end
  
   def start_time
        self.lesson_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
   end
end
