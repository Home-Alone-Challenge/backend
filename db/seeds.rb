
puts 'Cleaning dailytip database'
Dailytip.destroy_all

puts 'creating Dailytip'
dailytip = Dailytip.create!(
  title: "Wash Hands",
  description: "Wet your hands with clean, running water (warm or cold), turn off the tap, and apply soap. Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails. Scrub your hands for at least 20 seconds.",
  )

puts 'Dailytip created'

puts "Creating challenges"
category = ["fun", "eco", "sport", "selfcare", "social", "group", "art", "other"]

Challenge.create(title: "New Challenge1", description: "great description44", category: category.sample, duration: 5)
Challenge.create(title: "New Challenge2", description: "great description44", category: category.sample, duration: 5)
Challenge.create(title: "New Challenge3", description: "great description44", category: category.sample, duration: 5)

puts "Challenge creation done."


