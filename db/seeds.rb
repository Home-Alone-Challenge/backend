puts 'Cleaning dailytip database'
Dailytip.destroy_all

puts 'creating Dailytip'
dailytip = Dailytip.create!(
  title: "Wash Hands",
  description: "Wet your hands with clean, running water (warm or cold), turn off the tap, and apply soap. Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails. Scrub your hands for at least 20 seconds.",
  )

puts 'Dailytip created'
