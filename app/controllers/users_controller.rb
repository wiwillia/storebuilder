class UsersController < ApplicationController

  def index
    render "users/new"
  end

  # Show
  def show
    @user = User.find(params[:id])
  end

  ##########################
  # Create A New User
  ##########################
  def new
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
