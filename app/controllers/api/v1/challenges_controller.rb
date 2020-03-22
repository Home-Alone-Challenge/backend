class Api::V1::ChallengesController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy]

  def index
  @challenges = Challenge.all.where(user_id: params[:user_id])
  render json: @challenges
  end

  def random_challenge
    @random_challenge = Challenge.all.sample
    render json: @random_challenge
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
    @challenge.user_id = User.id
    @challenge = Challenge.new(:title, :description, :duration, :category, @challenge.user_id)
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
    params.require(:challenge).permit(:title, :description, :duration, :category, :user_id)
  end
end
