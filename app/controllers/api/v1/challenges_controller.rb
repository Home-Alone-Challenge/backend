class Api::V1::ChallengesController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]
  def index
    @challenges = Challenge.all.where(user_id: params[:user_id])
    render json: @challenges
  end

  def random_challenge
    @random_challenge = Challenge.where(category: params[:category]).sample
    render json: @random_challenge
  end

  def daily_challenge
    @daily_challenge = Challenge.all.sample
    render json: @daily_challenge
    #if 24 hours pass, increment the challenge id by one
    #see heroku jobs
  end

  def show
    render json: @challenge
  end

  def new
    @challenge = Challenge.new
    render json: @challenge
  end

  def edit
    render json: @challenge
  end

  def create
    @challenge.user_id = params[:user_id]
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to api_v1_user_challenge_path(@challenge)
    else
      render error: { error: 'Aufgabe wurde nicht erstellt. Bitte überprüfe deine Eingaben.'}
    end
  end

  def update
    @challenge.user_id = params[:user_id]
    @challenge.update(challenge_params)
    redirect_to api_v1_user_challenge_path(@challenge)
  end

  def destroy
    @challenge.destroy
    redirect_to api_v1_user_challenges_path
  end

  private

  def set_id
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :duration, :category, :user_id)
  end
end
