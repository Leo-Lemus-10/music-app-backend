# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Favorite.delete_all
Artist.delete_all

puts "Seeding users"
u1 = User.create(username: "Test1", password: "test") 
u2 = User.create(username: "Test2", password: "test")

puts "Seeding artists"
a1 = Artist.create(name: "Drake", spotify_id: "fw3jit3562njbk")
a2 = Artist.create(name: "Travis Scott", spotify_id: "ejkw43kj43jjn")
a3 = Artist.create(name: "Kanye West", spotify_id: "lk26lkn75f6s")
a4 = Artist.create(name: "Migos", spotify_id: "owr3gbn54fnj4n2")
a5 = Artist.create(name: "Lil Wayne", spotify_id: "qme2r43es8m")

puts "seeding favorites"
f1 = Favorite.create(user_id: u1.id, artist_id: a2.id, artist_name: "Travis Scott", img: "")
f2 = Favorite.create(user_id: u2.id, artist_id: a2.id, artist_name: "Travis Scott", img: "")
f3 = Favorite.create(user_id: u2.id, artist_id: a3.id, artist_name: "Kanye West", img: "")

