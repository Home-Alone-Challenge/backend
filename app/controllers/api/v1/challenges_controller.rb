class Api::V1::ChallengesController < ApplicationController

  def show
    @challenge = Challenge.find(params[:id])
    render json @challenge
  end

  def new
    @challenge = Challenge.new(challenge_params)
  end

  def create
    @challenge = Challenge.new(challenge_params)
      if @challenge.save
        render json: @challenge
      else
        render error: { error: 'Aufgabe wurde nicht erstellt. Bitte überprüfe deine Eingaben.'}
      end
  end

  private

  def challenge_params
    params.require(:challenge).permit(:title, :description, :duration, :category)
  end
end
