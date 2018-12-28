class Payment < ApplicationRecord
  belongs_to :student
  

  def to_s  
    student.last_name + " payment on " + payment_date.strftime("%m/%d/%Y")
  end
  
  def title
   self.student.last_name + ' - ' + self.payment_date.strftime("%m/%d/%Y")
  end
  
end
