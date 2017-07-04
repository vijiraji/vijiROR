class LogsController < ApplicationController
       #before_action :authenticate_user, :only =>[:home]
       before_action :save_login_state,  :only =>[:login]

  def home
  end

  def signup
    @log =Log.new
  end

  def create 
     @log = Log.new(params_user)
  if @log.save

     flash[:notice] = "Register Successfully"
     redirect_to logs_login_path
  else
    flash[:notice]="Failed to Register"
    render "signup"
  end 

  end

  def login
  @log = Log.new
  end
  def login_create 
   authorized_user=Log.authenticate(params[:log][:name],params[:log][:password])

  if authorized_user 
     session[:user_id]= authorized_user.id
     flash[:notice]="welcome to home"
     redirect_to logs_home_path
   else
     flash[:notice] = "invalid user"
     render "login"
  end   
  end
  def logout
   session[:user_id] = nil
   redirect_to :action => 'login'
  end




private
def params_user
params.require(:log).permit(:name, :email,:password)

end
end
