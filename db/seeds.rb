# require 'csv'

# csv_options = { col_sep: ',', headers: :first_row }
# filepath    = 'dailytips.csv'
# puts filepath
# puts "setup"
# CSV.foreach(filepath, csv_options) do |row|
#   dailytip = Dailytip.new
#   dailytip.title = row['Title']
#   dailytip.description = row['Description']
#   dailytip.save
# end

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

# puts 'Cleaning dailytip database'
# Dailytip.destroy_all

# puts 'creating Dailytip'
# dailytip = Dailytip.create!(
#   title: "Wash Hands",
#   description: "Wet your hands with clean, running water (warm or cold), turn off the tap, and apply soap. Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails. Scrub your hands for at least 20 seconds.",
#   )

# dailytip = Dailytip.create!(
#   title: "How to use hand sanitizer correctly",
#   description: "1. Make sure all organic matter is removed from hands.
#     2. Apply a dime sized amount of waterless hand sanitizer to the palm of one hand or use a waterless hand sanitizer wipe.
#     3. Rub hands together covering all surfaces of hands and fingers.
#     4. Rub until waterless hand sanitizer is absorbed.",
#   )

# dailytip = Dailytip.create!(
#   title: "How much sunshine should you get daily",
#   description: "To maintain healthy blood levels, aim to get 10–30 minutes of midday sunlight, several times per week. People with darker skin may need a little more than this. Your exposure time should depend on how sensitive your skin is to sunlight.",
#   )


# puts 'Dailytip created'

# puts 'Delete challenges'
# Challenge.destroy_all

# puts "Creating challenges"
# category = ["fun", "eco", "sport", "selfcare", "social", "group", "art", "other"]

# Challenge.create(title: "Little Artist", description: "Zeichne ein Bild von dir in deinem nächsten Urlaub – im Stil einer Kindergartenkind-Zeichnung. Und schön bunt. Dann ab an den Kühlschrank damit – und wenn du magst, auch auf facebook & Insta!", category: "art", duration: 5)
# Challenge.create(title: "Du Poet!", description: "Schreibe ein kleines aber feines Haiku-Gedicht", category: "art", duration: 5)
# Challenge.create(title: "Verkleide-sich-wer-kann", description: "Als Kinder haben wir uns ständig verkleidet, warum nicht heute? Suche oder bastle Dir eine Verkleidung. Mache und poste ein Selfie davon.", category: "fun", duration: 5)

# puts "Challenge creation done."

