class UsersController < ApplicationController 

# before_filter :save_login_state, :only => [:new, :create]
 
  def new
    @user = User.new 
  end
  def create
    @user = User.new(test_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
      redirect_to sessions_login_path
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end
   
  end

  private

  def test_params
     params.require(:user).permit!#(:username, :email, :password, :password_confirmation)
  end
end
