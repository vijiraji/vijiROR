class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   protected 
	def authenticate_user
  	 if session[:log_id]
     	  # set current user object to @current_user object variable
    	  @log = Log.find session[:log_id] 
    	  return true	
  	 else
   	  redirect_to(:controller => 'logs', :action => 'login')
    	  return false
  	 end
	end
   
    def save_login_state
     if session[:log_id]
       redirect_to(:controller => 'logs', :action => 'home')
      return false
     else
      return true
     end
   end
end
