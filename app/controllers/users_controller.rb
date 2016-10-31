class UsersController < ApplicationController

  def new
    # session[:user_id] = nil if logged_in?
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to blogs_path
    else
      render 'new'
    end

  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
