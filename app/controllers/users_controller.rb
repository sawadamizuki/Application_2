class UsersController < ApplicationController

  def index
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
  　params.require(:user) .permit(:name, :introduction, :profile_image)
  end

end
