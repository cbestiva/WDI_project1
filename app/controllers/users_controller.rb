class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    @user = User.new(user)
    if @user.save
      flash[:success] = "Welcome to SF Farmers' Market Guide!"
      sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    reneder :show
  end
  
end
