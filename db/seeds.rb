# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# genre_names = ["Hip-hop", "Lo-Fi", "House", "EDM", "Ambient", "Foley", "Hamstar Squeals"]

puts "destroying seeds."

Purchase.destroy_all
Pack.destroy_all
Genre.destroy_all
User.destroy_all

Purchase.reset_pk_sequence
Pack.reset_pk_sequence
Genre.reset_pk_sequence
User.reset_pk_sequence

puts "seeds destroyed."

puts "creating users"


User.create(name: "Jabair", email: "jabairk@gmail.com", password: "abc123", bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote, image: Faker::LoremFlickr.image)
User.create(name: "Khalil", email: "khalil@gmail.com", password: "abc123", bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote, image: Faker::LoremFlickr.image)
User.create(name: "Andre", email: "andre@gmail.com", password: "abc123", bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote, image: Faker::LoremFlickr.image)
User.create(name: "Henry", email: "henry@gmail.com", password: "abc123", bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote, image: Faker::LoremFlickr.image)
User.create(name: "Missy", email: "missy@gmail.com", password: "abc123", bio: Faker::TvShows::TheFreshPrinceOfBelAir.quote, image: Faker::LoremFlickr.image)

puts "users done."

puts "creating genres"

Genre.create(name: "Hip-Hop")
Genre.create(name: "R&B")
Genre.create(name: "Jazz")
Genre.create(name: "IDM")
Genre.create(name: "Ambient")
Genre.create(name: "Techno")
Genre.create(name: "House")
Genre.create(name: "Dancehall")
Genre.create(name: "Afro-Beats")
Genre.create(name: "UK Drill/Grime")
Genre.create(name: "Foley")
Genre.create(name: "EDM")

puts "genres done."

puts "creating packs"

20.times do 
    Pack.create(user_id: User.all.sample.id, genre_id: Genre.all.sample.id, name: Faker::Game.title, description: Faker::Music::Prince.lyric, image: Faker::LoremFlickr.image, preview: Faker::Internet.url, link: Faker::Internet.url, price: rand(1..3)*10)
end

puts "packs done."

puts "creating purchases"

# 20.times do 
#     Purchase.create(pack_id: Pack.all.sample.id, user_id: User.all.sample.id)

# end
Purchase.create(pack_id: 1, user_id: 1)

puts "seeds done."


