class UsersController < ApplicationController
  before_filter :find_user  , :only => [:edit,:show] 
  def index
    @user=User.all
  end

  def new
    @user=User.new
  end

  def create
   @user = User.create(user_params)
   if @user.save
      redirect_to users_path
   else
     render :action => 'new'
  end
  end

  def edit

  end

  def update
  @user = User.find_by(:name=>params[:user][:name])
    if @user.update(user_params)
      redirect_to users_path
   else
     render :action => 'edit'
   end

  end

  def show
  end

  def delete
   @user = User.find(params[:format])
   if @user.delete
     redirect_to root_path
   else
      redirect_to root_path
   end
  end

  private

  def user_params
   params.require(:user).permit(:id,:name,:age,:place,:number)
  end

  def find_user
   @user = User.find(params[:id])
  end
end
