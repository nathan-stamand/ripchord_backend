class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def login
    
  end

  def logout
    render plain: "logout!"
  end

  def create
    user = User.find_by(username: params[:user][:username])
    if user
      render json: {message: "User already exists, please choose different username and try again!"}
    else
      user = User.create(user_params)
      session[:user_id] = user.id
      render json: UserSerializer.new(user)
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
