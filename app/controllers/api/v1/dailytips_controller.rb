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

  def show
    @dailytip = Dailytip.find(params[:id])
    render json: @dailytip
  end
end

