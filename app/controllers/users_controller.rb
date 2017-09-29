class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email, :session_token)
  end
  def new
    # default: render 'new' template
  end

  def create
    @user=User.create_user!(user_params)
    flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
    redirect_to movies_path
    
    

    '''if User.exists?(user_id)
      flash[:notice] = "The User Id #{params[:user][:user_id]} Sorry, this user_id is taken. Try abain."
      redirect_to new_user_path
    else
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
      redirect_to movies_path
      
    end
    '''
  end

end