class Api::V1::DailyTipsController < ApplicationController
  before_action :set_dailytip, only: [:show]
  def show
  end

  def set_dailytip
    @dailytip = Dailytip.find(params[:id])
  end
end
