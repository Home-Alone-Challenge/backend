require 'pry'

class Api::V1::FeedbacksController < ApplicationController
  def index
      @feedbacks = Feedback.all
      render json: @feedbacks
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user_id = params[:user_id]
    @feedback.save
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :description, :user_id)
  end
end
