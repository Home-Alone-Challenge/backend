# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating challenges"
Challenge.create(title: "New Challenge1", description: "great description44", category: "mental coolness", duration: 5)
Challenge.create(title: "New Challenge2", description: "great description44", category: "sport", duration: 5)
Challenge.create(title: "New Challenge3", description: "great description44", category: "awareness", duration: 5)
puts "Challenge creation done."
