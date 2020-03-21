class Api::V1::UsersController < ApplicationController

  def new
    @user = User.new()
  end

  def create
    user = User.new()
    user.save
    render json: user.uuid
    #database
    #function that shows save
  end
end
