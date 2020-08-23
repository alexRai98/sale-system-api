class UsersController < ApplicationController
  skip_before_action :require_login, only: [:create]
  def show
    render json: current_user.to_json(only: [:id,:name, :user_name,:token ,:type])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user.to_json(only: [:id, :user_name,:name,:token ,:type]), status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if current_user.update(user_params)
      render json: current_user
    else
      render json: current_user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:user_name ,:name, :password, :type)
  end
end
