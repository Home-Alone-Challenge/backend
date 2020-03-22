class Api::V1::DailytipsController < ApplicationController
  # def create
  #   csv_options = { col_sep: ',', headers: :first_row }
  #   filepath    = '../../../dailytips.csv'
  #   CSV.foreach(filepath, csv_options) do |row|
  #     dailytip = Dailytip.new
  #     dailytip.title = row['Title']
  #     dailytip.description = row['Description']
  #     dailytip.save
  #   end
  # end

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
      undaily_challenge = Dailytip.find_by(daily: true)
      undaily_challenge.daily = false
      undaily_challenge.save
    end
    daily_challenge = Dailytip.all.sample
    daily_challenge.daily = true
    daily_challenge.save
  end

  def show
    @dailytip = Dailytip.find(params[:id])
    render json: @dailytip
  end
end

