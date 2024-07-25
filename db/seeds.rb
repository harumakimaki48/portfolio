# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Shop.create!([
  { name: 'かさの家', opening_time: '09:00', closing_time: '17:00', holiday: '毎週月曜日', url: 'http://www.kasanoya.com/umegaemochi.html' },
  { name: 'やす武', opening_time: '10:00', closing_time: '18:00', holiday: '毎週火曜日', url: 'https://umegaemochi.com/' }
])