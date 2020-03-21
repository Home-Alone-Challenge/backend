class Api::V1::DailytipsController < ApplicationController
  def show
    @dailytip = Dailytip.find(params[:id])
    render json: @dailytip
  end
end

