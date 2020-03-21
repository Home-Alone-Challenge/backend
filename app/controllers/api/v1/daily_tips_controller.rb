require 'csv'

class Api::V1::DailyTipsController < ApplicationController
  def create
    csv_options = { col_sep: ',', headers: :first_row }
    filepath    = 'dailytips.csv'
    CSV.foreach(filepath, csv_options) do |row|
      dailytip = Dailytip.new
      dailytip.title = row['Title']
      dailytip.description = row['Description']
      dailytip.save
    end
  end
end
