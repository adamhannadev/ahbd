class WelcomeController < ApplicationController
    
    def backup
        @lessons = Lesson.all
        @packages = Package.all
        @payments = Payment.all
         respond_to do |format|
    format.xlsx {
    response.headers['Content-Disposition'] = 'attachment; filename="all_backup.xlsx"'
    }
    end 
    end
    
    def index
    
    end
end
