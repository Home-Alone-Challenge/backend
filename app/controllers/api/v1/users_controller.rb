class Api::V1::UsersController < ApplicationController

  def new
    @user = User.new()
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    user = User.new()
    user.save
    render json: user.slice(:id)
  end
end

