class SessionsController < ApplicationController
  def login
    #Login Form
  end

  def home
   
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
     byebug
    if authorized_user
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'home')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"	
    end
  end
  def logout
   session[:user_id] = nil
   redirect_to :action => 'login'
  end
end

