class UsersController < ApplicationController

  def new
  end

  def create
  @user=User.create_user!(params[:user])

    if !!(@user)
      flash[:notice] = "New user #{@user.user_id} was successfully created."
      redirect_to movies_path
    else
      flash[:notice] = "The User Id #{params[:user][:user_id]} Sorry, this user_id is taken. Try abain."
      redirect_to new_user_path
    end
  end

end