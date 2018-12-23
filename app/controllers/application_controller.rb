class ApplicationController < ActionController::Base
    def ensure_admin!
      unless current_user.admin?
        flash[:notice] = 'Sorry, you have to have admin privileges to see this page.'
      redirect_to root_path
      return false
      end
    end
end
