puts "Deleting dailytips"
Dailytip.destroy_all
puts "Dailytips deleted"

puts "Deleting challenges"
Challenge.destroy_all
puts "Challenges deleted"

puts "Deleting users"
User.destroy_all
puts "Users deleted"

require 'csv'

csv_text_dailytips = File.read(Rails.root.join('lib', 'seeds', 'daily_tips.csv'))


csv = CSV.parse(csv_text_dailytips, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  d = Dailytip.new
  d.title = row['Kategorie']
  d.description = row['Beschreibung']
  d.save
  puts "Dailytip #{d.title} saved"
end

csv_text_challenges = File.read(Rails.root.join('lib', 'seeds', 'daily_challenges.csv'))

csv = CSV.parse(csv_text_challenges, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  c = Challenge.new
  c.title = row['Titel']
  c.description = row['Beschreibung']
  c.category = row['Kategorie']
  c.duration = row['Dauer']

  c.save
  puts "Challenge #{c.title} saved"
end


