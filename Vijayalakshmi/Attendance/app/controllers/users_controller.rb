class UsersController < ApplicationController

    before_filter :authenticate_user, :only => [:add_user, :menu]
    before_filter :save_login_state, :only => [:login_attempt]
    before_filter :save_login_state, :only => [:new, :create]

  def index
   @user = User.all
  end
  

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:encrypted_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      redirect_to(:action => 'menu')
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "index"	
    end
end 

   def menu
    
   end

   def add_user

   end

   def logout
     session[:user_id] = nil
     redirect_to :action => 'index'
   end
end
