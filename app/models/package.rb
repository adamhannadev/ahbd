class Package < ApplicationRecord
  belongs_to :student
  belongs_to :payment
  has_many :lessons, dependent: :destroy
  after_find :set_activity
  
  def remaining
   return self.lessons_purchased - self.lessons.count
  end
  
  def title
   self.student.last_name + ' - ' + self.payment.payment_date.strftime("%A, %b. %d")
  end

 private
 def set_activity
  if self.lessons.count >= self.lessons_purchased
    self.active = "inactive"
  else
    self.active = "active"
  end
 end

end
