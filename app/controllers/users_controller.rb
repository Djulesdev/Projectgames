class UsersController < ApplicationController

  def index
    @users = @users.all
  end

  def show
    @user = User.find(params[:id])
    @article = Article.new()
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    @user.save
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :bio)
  end

end
