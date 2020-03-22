require 'csv'

namespace :import do
  desc "Import challenges from csv"
  task challenges: :environment do
    filename = File.join Rails.root,'dailytips.csv'
    CSV.foreach(filename) do |row|
      p row
    # dailytip = Dailytip.new
    # dailytip.title = row['Title']
    # dailytip.description = row['Description']
    # dailytip.save

  end
end
end
