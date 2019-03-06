class Dance < ApplicationRecord
  belongs_to :category
    def to_s
        return "#{self.category} #{self.title}"
    end
end
