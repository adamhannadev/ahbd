class Package < ApplicationRecord
  belongs_to :student
  belongs_to :payment
  has_many :lessons
  
  def title
   self.student.last_name + ' - ' + self.payment.payment_date.strftime("%m/%d/%Y")
  end

end
