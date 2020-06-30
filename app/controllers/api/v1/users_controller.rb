class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def create
    user = User.create(user_params)
    render json: UserSerializer.new(user)
  end

  def show
    user = User.find_by(id: params[:id])
    render json: UserSerializer.new(user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_digest)
  end
end
