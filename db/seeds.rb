puts 'Cleaning dailytip database'
Dailytip.destroy_all

puts 'creating Dailytip'
dailytip = Dailytip.create!(
  title: "Wash Hands",
  description: "Wet your hands with clean, running water (warm or cold), turn off the tap, and apply soap. Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails. Scrub your hands for at least 20 seconds.",
  )

dailytip = Dailytip.create!(
  title: "How to use hand sanitizer",
  description:
  "1. Make sure all organic matter is removed from hands.
  2. Apply a dime sized amount of waterless hand sanitizer to the palm of one hand or use a waterless hand sanitizer wipe.
  3. Rub hands together covering all surfaces of hands and fingers.
  4. Rub until waterless hand sanitizer is absorbed.",
  )
puts 'Dailytip created'
