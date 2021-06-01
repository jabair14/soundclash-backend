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

# 20.times do 
#     Pack.create(
#         user_id: User.all.sample.id, 
#         genre_id: Genre.all.sample.id, 
#         name: Faker::Game.title, 
#         description: Faker::Music::Prince.lyric, 
#         image: Faker::LoremFlickr.image, 
#         preview: Faker::Internet.url, 
#         link: Faker::Internet.url, 
#         price: rand(1..3)*10)
# end

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 1, 
    name: "Modern Afrobeat",
    image: "https://i1.sndcdn.com/artworks-aWF0ohIIuHr30Bzg-eGkxZQ-t500x500.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 2, 
    name: "Dancehall Essentials",
    image: "https://content.beatstars.com/fit-in/500x500/filters:format(.jpeg):quality(80):fill(000000)//users/prod/1802314/image/xtO23c8xmtMZ/i12moahp6m.png",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 3, 
    name: "Chicago House Elements",
    image: "https://cdn.producerloops.com//images/thumbs/50524/prod_img_50524_236x236%5E85+1604737210.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 4, 
    name: "Tech House",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTAxFibPB4ZCsM6HRPUnNunnTst6AotKiR3A&usqp=CAU",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 5, 
    name: "Drip Hip Hop Samples",
    image: "https://sample-packs.com/wp-content/uploads/2019/09/drip-hip-hop-sample-pack.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 6, 
    name: "Jazz Samples",
    image: "https://www.musictech.net/wp-content/uploads/2018/07/Lack_of_Afro_Presents_Jazz_Crates.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 7, 
    name: "Leftfield Techno",
    image: "https://i.pinimg.com/564x/f3/aa/2f/f3aa2f8c86c7fcf140a4b1d0165bd73a.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 8, 
    name: "Music to Score Movies",
    image: "https://cdn.shopify.com/s/files/1/0166/5170/products/Soul_Surplus_-_Original_Motion_Picture_Sample_Pack.png?v=1566586109",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 8, 
    name: "Break Up Samples",
    image: "https://splice-res.cloudinary.com/image/upload/f_auto,q_auto,w_auto/c_limit,w_450/v1573480642/1573480641.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 9, 
    name: "Ultra EDM",
    image: "https://www.producerspot.com/wp-content/uploads/2013/09/essential-edm-samples-loopmasters.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 10, 
    name: "Weird Samples to Weird With",
    image: "https://plugintorrent.info/wp-content/uploads/2020/11/Instead-Of-Drums-1-%E2%80%95-Foley-Sample-Pack-min.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 11, 
    name: "Definitely Not Dubstep",
    image: "https://i1.sndcdn.com/artworks-r2Az6gdyiKq3DSeN-mMVMZA-t500x500.jpg",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)

Pack.create(
    user_id: User.all.sample.id,
    genre_id: 12, 
    name: "Play some Sade",
    image: "https://townsquare.media/site/625/files/2018/04/sade-75613290.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89",
    preview: "https://bandcamp.com/EmbeddedPlayer/track=2449232180/size=small/bgcol=ffffff/linkcol=0687f5/transparent=true/",
    description: Faker::Music::Prince.lyric,
    link: "https://www.dropbox.com/sh/rvmrf2omy6r3426/AAADs6d1LtCLCXpNG1qvgh6Ra?dl=0",
    price: rand(1..3)*10
)
puts "packs done."

puts "creating purchases"

20.times do 
    Purchase.create(pack_id: Pack.all.sample.id, user_id: User.all.sample.id)

end
# Purchase.create(pack_id: 1, user_id: 1)

puts "seeds done."


