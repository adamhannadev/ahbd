class Lesson < ApplicationRecord
  belongs_to :student
  has_one :package
  has_one :payment
  before_save :set_status
  validates :lesson_date, presence: true
  scope :this_years_lessons, -> { where('lesson_date > ?', Date.current.beginning_of_year) }
  serialize :recurring, Hash
  
  def recurring=(value)
    if value == "null"
      super(nil)
    elsif RecurringSelect.is_valid_rule?(value)
      super(RecurringSelect.dirty_hash_to_rule(value).to_hash)
    else
      super(nil)
    end
  end
  
  def rule
    IceCube::Rule.from_hash recurring
  end
  
  def schedule(start)
    schedule = IceCube::Schedule.new(start)
    schedule.add_recurrence_rule(rule)
    schedule
  end
  
  def recurring_lessons(start)
    if recurring.empty?
        [self]
    else 
        lesson_date = start.beginning_of_month.beginning_of_week
        end_date = start.end_of_month.end_of_week
        schedule(lesson_date).occurrences(end_date).map do |date|
            Lesson.new(id: id, student: student, lesson_date: date)
        end
    end
  end

  
    def start_time
        self.lesson_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
  
    def end_date
        self.lesson_date  + 60*60
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
