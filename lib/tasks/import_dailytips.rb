# require 'csv'

# csv_options = { col_sep: ',', headers: :first_row }
# filepath    = 'dailytips.csv'
#   puts filepath
#   puts "setup"
# CSV.foreach(filepath, csv_options) do |row|
#   dailytip = Dailytip.new
#   dailytip.title = row['Title']
#   dailytip.description = row['Description']
#   dailytip.save
# end
