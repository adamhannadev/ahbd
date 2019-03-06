class Level < ApplicationRecord
    def to_s
        return self.title
    end
end
