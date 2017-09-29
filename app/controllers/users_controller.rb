class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email, :session_token)
  end
  def new
    # default: render 'new' template
  end

  def create
    @user=User.create_user!(params[:user])
    flash[:notice] = "Welcome <user-ID>. Your account has been created."
    redirect_to movies_path
  end

end