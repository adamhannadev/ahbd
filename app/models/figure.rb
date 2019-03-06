class Figure < ApplicationRecord
  belongs_to :level
  belongs_to :dance
  
  def to_s
    return self.title
  end
end
