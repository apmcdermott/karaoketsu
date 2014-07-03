# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mjackson = Artist.create(name: "Michael Jackson", gender: "male", range_low: 61, range_high: 85)
weezer = Artist.create(name: "Weezer", alt_name: "Rivers Cuomo", gender: "male", range_low: 59, range_high: 80)
nimbruglia = Artist.create(name: "Natalie Imbruglia", gender: "female", range_low: 53, range_high: 70)
cunderwood = Artist.create(name: "Carrie Underwood", gender: "female", range_low: 54, range_high: 73)

s1 = Song.create(title: "Billie Jean", artist: mjackson, range_low: 61, range_high: 85)
s2 = Song.create(title: "Say It Ain't So", artist: weezer, range_low: 59, range_high: 80)
s3 = Song.create(title: "Torn", artist: nimbruglia, range_low: 53, range_high: 70)
s4 = Song.create(title: "Before He Cheats", artist: cunderwood, range_low: 54, range_high: 73)
s5 = Song.create(title: "Cowboy Casanova", artist: cunderwood, range_low: 57, range_high: 74)
