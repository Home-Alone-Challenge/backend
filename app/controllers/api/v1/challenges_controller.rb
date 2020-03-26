require 'pry'

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
    if Challenge.find_by(daily: true).nil?
      set_daily
    end
    @daily_challenge = Challenge.find_by(daily: true)
    render json: @daily_challenge
  end

  def show
    render json: @challenge
  end

  def new
    @challenge = Challenge.new
    render json: @challenge
  end

  def create
    if params[:challenge].present?
      @challenge = Challenge.new(challenge_params)
      @challenge.user_id = params[:user_id]
      if @challenge.save
        render json: @challenge
      else
        render json: @challenge.errors.full_messages
      end
    else
      render json: ['Title must be given', 'Duration must be given', 'Category must be given', 'Description must be given']
    end
  end

  def update
    @challenge.user_id = params[:user_id]
    if @challenge.update(challenge_params)
      render json: @challenge
    else
      render json: @challenge.errors.full_messages
    end
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
