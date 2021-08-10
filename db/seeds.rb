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
u1 = User.create(username: "Patrick", password: "test", profile_pic: "https://mb.com.ph/wp-content/uploads/2020/08/patrick.png") 
u2 = User.create(username: "Eric", password: "12345", profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U91CXSUN4-e7fa6f5403ce-512")


puts "Seeding artists"
a1 = Artist.create(name: "Drake", spotify_link: "https://open.spotify.com/embed/artist/3TVXtAsR1Inumwj472S9r4?theme=0", picture: "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ed578988b3c370006234c35%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D43%26cropX2%3D1074%26cropY1%3D49%26cropY2%3D1080")
a2 = Artist.create(name: "A Boogie", spotify_link: "https://open.spotify.com/embed/artist/31W5EY0aAly4Qieq6OFu6I", picture: "https://yt3.ggpht.com/ytc/AKedOLQHw0kYCSUfNkyWUQv5lQQ_1DKId8zHdAm3jPkK=s900-c-k-c0x00ffffff-no-rj")
a3 = Artist.create(name: "Travis Scott", spotify_link: "https://open.spotify.com/embed/artist/0Y5tJX1MQlPlqiwlOH1tJY", picture: "https://cdn.vox-cdn.com/thumbor/dlXO8a_X9sfPuJnQWUMLF-FVcsE=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/21986088/travis_scott.jpeg")
a5 = Artist.create(name: "Polo G", spotify_link: "https://open.spotify.com/embed/artist/6AgTAQt8XS6jRWi4sX7w49", picture: "https://i1.sndcdn.com/avatars-cHNQ5sKXaPSsbbHy-9fgzJw-t500x500.jpg")
a6 = Artist.create(name: "Pop Smoke", spotify_link: "https://open.spotify.com/embed/artist/0eDvMgVFoNV3TpwtrVCoTj", picture: "https://imagez.tmz.com/image/72/4by3/2020/02/19/724de2994aaa45848243f45c900b8e4e_xl.jpg")
a7 = Artist.create(name: "Migos", spotify_link: "https://open.spotify.com/embed/artist/6oMuImdp5ZcFhWP0ESe6mG", picture: "https://i1.sndcdn.com/avatars-WOVW3h6yHBGW5hfm-X67XPA-t500x500.jpg")
a8 = Artist.create(name: "Lil Tjay", spotify_link: "https://open.spotify.com/embed/artist/6jGMq4yGs7aQzuGsMgVgZR", picture: "https://i.iheart.com/v3/catalog/artist/32445456?ops=fit(720%2C720)")
a9 = Artist.create(name: "Lil Baby", spotify_link: "https://open.spotify.com/embed/artist/5f7VJjfbwm532GiveGC0ZK", picture: "https://cdn.vox-cdn.com/thumbor/rVH6wH8NYAaUKJo7LyHJe9d4IcA=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20058765/https___hypebeast.com_image_2020_03_lil_baby_my_turn_debut_number_one_album_billlboard_200_charts_001.jpg")
a10 = Artist.create(name: "Gunna", spotify_link: "https://open.spotify.com/embed/artist/2hlmm7s2ICUX0LVIhVFlZQ", picture: "https://www.interviewmagazine.com/wp-content/uploads/2019/02/IMG_3098-2.jpg")

puts "Seeding favorites"
f1 = Favorite.create(user_id: u1.id, artist_id: a6.id, artist_name: a6.name, img: a6.picture)
f2 = Favorite.create(user_id: u1.id, artist_id: a2.id, artist_name: a2.name, img: a2.picture)
f3 = Favorite.create(user_id: u1.id, artist_id: a8.id, artist_name: a8.name, img: a8.picture)
f4 = Favorite.create(user_id: u2.id, artist_id: a1.id, artist_name: a1.name, img: a1.picture)
f5 = Favorite.create(user_id: u2.id, artist_id: a10.id, artist_name: a10.name, img: a10.picture)
