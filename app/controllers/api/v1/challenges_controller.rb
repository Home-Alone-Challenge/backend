class Api::V1::ChallengesController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]

  def index
    @challenges = Challenge.all
    render json: @challenges
  end

  def random_challenge
    @random_challenge = Challenge.all.sample
    render json: @random_challenge
  end

  def daily_challenge
    if Challenge.find_by(daily: true).nil?
      set_daily
    end
    @daily_challenge = Challenge.find_by(daily: true)
    render json: @daily_challenge
  end

  def set_daily

    if !Challenge.find_by(daily: true).nil?
      undaily_challenge = Challenge.find_by(daily: true)
      undaily_challenge.daily = false
      undaily_challenge.save
    end
    daily_challenge = Challenge.all.sample
    daily_challenge.daily = true
    daily_challenge.save
  end

  def show
    render json: @challenge
  end

  def new
    @challenge = Challenge.new
  end

  def edit
  end

  def create
    @challenge = Challenge.new(challenge_params)
      if @challenge.save
        render json: @challenge
      else
        render error: { error: 'Aufgabe wurde nicht erstellt. Bitte überprüfe deine Eingaben.'}
      end
  end

  def update
    @challenge.update(challenge_params)
    render json: @challenge
  end

  def destroy
    @challenge.destroy
  end

  private

  def set_id
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :duration, :category)
  end
end
