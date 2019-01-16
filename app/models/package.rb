class Package < ApplicationRecord
  belongs_to :student
  belongs_to :payment
  has_many :lessons, dependent: :destroy
   enum status: [ :active, :inactive ]
  after_find :set_activity
  
  def remaining
   return self.lessons_purchased - self.lessons.count
  end
  
  def title
   self.student.last_name + ' - ' + self.payment.payment_date.strftime("%A, %b. %d")
  end

    def set_activity
    if self.lessons_purchased > self.lessons.count
        self.active!
     else
         self.inactive!
    end
    end

end
