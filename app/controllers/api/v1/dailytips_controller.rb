class Api::V1::DailytipsController < ApplicationController
  def random_dailytip
    @random_dailytip = Dailytip.all.sample
    render json: @random_dailytip
  end

  def daily_tip
    if Dailytip.find_by(daily: true).nil?
      set_daily
    end
    @daily_challenge = Dailytip.find_by(daily: true)
    render json: @daily_challenge
  end

  def set_daily
    if !Dailytip.find_by(daily: true).nil?
      undaily_dailytip = Dailytip.find_by(daily: true)
      undaily_dailytip.daily = false
      undaily_dailytip.save
    end
    daily_dailytip = Dailytip.all.sample
    daily_dailytip.daily = true
    daily_dailytip.save
  end

  def show
    @dailytip = Dailytip.find(params[:id])
    render json: @dailytip
  end
end

