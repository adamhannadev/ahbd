class Student < ApplicationRecord
    has_many :packages
    
    def lessons_remaining
        @lessons = 0
        self.packages.each do |p|
            @lessons += p.remaining
        end
        return @lessons
    end
end
