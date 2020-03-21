class Api::V1::DailytipsController < ApplicationController

  def random_dailytip
    @random_dailytip = Dailytip.all.sample
    render json: @random_dailytip
  end

  def show
    @dailytip = Dailytip.find(params[:id])
    render json: @dailytip
  end
end

