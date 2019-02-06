class WelcomeController < ApplicationController
    before_action :authenticate_user!, :ensure_admin!, only:[:backup]
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
