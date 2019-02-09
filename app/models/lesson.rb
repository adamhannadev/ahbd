class Lesson < ApplicationRecord
  belongs_to :student
  has_one :package
  has_one :payment
  before_save :set_status
  validates :start_time, presence: true
  scope :this_years_lessons, -> { where('start_time > ?', Date.current.beginning_of_year) }
  
    def end_date
        self.start_time  + 60*60
    end
  
  def to_s
    self.student.last_name + " - " + self.start_time.to_formatted_s(:long)
  end
  
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
end
