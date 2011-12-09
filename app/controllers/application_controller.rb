class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
    def current_user
      @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
    
    def require_user
      unless current_user        
        respond_to do |format|
          format.html  { 
            flash[:error] = "You must be logged in to access this page"
            redirect_to "/authorize"          
          }
          format.all { 
            head(:unauthorized)
          }
        end
        return false
      end
      return true
    end
    
    helper_method :current_user
end
