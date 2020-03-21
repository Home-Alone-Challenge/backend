puts 'Cleaning dailytip database'
Dailytip.destroy_all

puts 'creating Dailytip'
dailytip = Dailytip.create!(
  title: "Wash Hands",
  description: "Wet your hands with clean, running water (warm or cold), turn off the tap, and apply soap. Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails. Scrub your hands for at least 20 seconds.",
  )

dailytip = Dailytip.create!(
  title: "How to use hand sanitizer correctly",
  description: "1. Make sure all organic matter is removed from hands.
    2. Apply a dime sized amount of waterless hand sanitizer to the palm of one hand or use a waterless hand sanitizer wipe.
    3. Rub hands together covering all surfaces of hands and fingers.
    4. Rub until waterless hand sanitizer is absorbed.",
  )

dailytip = Dailytip.create!(
  title: "How much sunshine should you get daily",
  description: "To maintain healthy blood levels, aim to get 10–30 minutes of midday sunlight, several times per week. People with darker skin may need a little more than this. Your exposure time should depend on how sensitive your skin is to sunlight.",
  )

puts 'Dailytip created'

puts "Creating challenges"
category = ["fun", "eco", "sport", "selfcare", "social", "group", "art", "other"]

Challenge.create(title: "New Challenge1", description: "great description44", category: category.sample, duration: 5)
Challenge.create(title: "New Challenge2", description: "great description44", category: category.sample, duration: 5)
Challenge.create(title: "New Challenge3", description: "great description44", category: category.sample, duration: 5)

puts "Challenge creation done."


