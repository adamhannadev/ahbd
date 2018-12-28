class Package < ApplicationRecord
  belongs_to :student
  belongs_to :payment
  has_many :lessons, dependent: :destroy
  
  def active
   if self.lessons.count < self.lessons_purchased
   return true
   end
  end
  
  def title
   self.student.last_name + ' - ' + self.payment.payment_date.strftime("%m/%d/%Y")
  end

end
