class Student < ApplicationRecord
    has_many :packages
    
    def to_s
     return self.first_name + " " + self.last_name
    end
    
    def lessons_remaining
        @lessons = 0
        self.packages.each do |p|
            @lessons += p.remaining
        end
        return @lessons
    end
end
