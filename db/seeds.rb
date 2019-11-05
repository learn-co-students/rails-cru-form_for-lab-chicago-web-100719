# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all


artist1 = Artist.create(name: "Sarah", bio: "I love country")
artist2 = Artist.create(name: "Anna", bio: "I love hip hop")
artist3 = Artist.create(name: "Chloe", bio: "I love Moana")

genre1 = Genre.create(name: "Moana")
genre2 = Genre.create(name: "Country")
genre3 = Genre.create(name: "Hip Hop")

song1 = Song.create(name: "OOOOO", artist_id: artist1.id, genre_id: genre2.id )
song2 = Song.create(name: "Yeaaaa", artist_id: artist2.id, genre_id: genre3.id )
song3 = Song.create(name: "woooo", artist_id: artist3.id, genre_id: genre1.id )


