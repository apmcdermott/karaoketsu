"Deleting artists, songs, and users"
Artist.delete_all
Song.delete_all
User.delete_all

singers = []

puts "Creating dude singers"
singers << mjackson = Artist.create(name: "Michael Jackson", gender: "male", range_low: 61, range_high: 85, voice_type: "tenor")
singers << jlegend = Artist.create(name: "John Legend", gender: "male", range_low: 60, range_high: 82, voice_type: "baritone")
singers << jtimberlake = Artist.create(name:"Justin Timberlake", gender: "male", range_low: 42, range_high: 83, voice_type: "tenor")
singers << esheeran = Artist.create(name:"Ed Sheeran", gender: "male", range_low: 57, range_high: 81, voice_type: "tenor")

puts "Creating lady singers"
singers << nimbruglia = Artist.create(name: "Natalie Imbruglia", gender: "female", range_low: 53, range_high: 70, voice_type: "soprano")
singers << cunderwood = Artist.create(name: "Carrie Underwood", gender: "female", range_low: 50, range_high: 80, voice_type: "mezzo-soprano")
singers << cperri = Artist.create(name: "Christina Perri", gender: "female", range_low: 53, range_high: 72, voice_type: "contralto")
singers << imenzel = Artist.create(name: "Idina Menzel", gender: "female", range_low: 53, range_high: 82, voice_type: "mezzo-soprano")
singers << adele = Artist.create(name: "Adele", gender: "female", range_low: 48, range_high: 76, voice_type: "contralto")
singers << awinehouse = Artist.create(name: "Amy Winehouse", gender: "female", range_low: 50, range_high: 87, voice_type: "contralto")
singers << hwilliams = Artist.create(name: "Hayley Williams", alt_name: "Paramore", gender: "female", range_low: 46, range_high: 78, voice_type: "mezzo-soprano")

songs = []
puts "Creating songs"
songs << billiejean = Song.create(title: "Billie Jean", artist: mjackson, range_low: 61, range_high: 85, key: 6, mode: 0)
songs << someonelikeyou = Song.create(title: "Someone Like You", artist: adele, range_low: 52, range_high: 76, key: 9, mode: 1)
songs << torn = Song.create(title: "Torn", artist: nimbruglia, range_low: 53, range_high: 70, key: 6, mode: 1)
songs << beforehecheats = Song.create(title: "Before He Cheats", artist: cunderwood, range_low: 54, range_high: 73, key: 6, mode: 0)
songs << cowboycasanova = Song.create(title: "Cowboy Casanova", artist: cunderwood, range_low: 57, range_high: 74, key: 2, mode: 0)
songs << athousandyears = Song.create(title: "A Thousand Years", artist: cperri, range_low: 53, range_high: 72, key: 10, mode: 1)
songs << allofme = Song.create(title: "All of Me", artist: jlegend, range_low: 60, range_high: 82, key: 8, mode: 1)
songs << letitgo = Song.create(title: "Let It Go", artist: imenzel, range_low: 53, range_high: 75, key: 8, mode: 1)
songs << legohouse = Song.create(title: "Lego House", artist: esheeran, range_low: 57, range_high: 81, key: 9, mode: 1)
songs << crymeariver = Song.create(title: "Cry Me a River", artist: jtimberlake, range_low: 60, range_high: 83, key: 8, mode: 0)
songs << stillintoyou = Song.create(title: "Still Into You", artist: hwilliams, range_low: 60, range_high: 74, key: 5, mode: 0)
songs << onlyexception = Song.create(title: "The Only Exception", artist: hwilliams, range_low: 54, range_high: 75, key: 11, mode: 1)
songs << aintitfun = Song.create(title: "Ain't It Fun", artist: hwilliams, range_low: 59, range_high: 73, key: 4, mode: 1)

puts "Adding artist voice tags"
mjackson.tag_list.add("falsetto", "breathy")
jlegend.tag_list.add("belting", "smoky")
jtimberlake.tag_list.add("falsetto", "complex vocal runs")
nimbruglia.tag_list.add("bright", "sweet")
cunderwood.tag_list.add("belting", "bright")
cperri.tag_list.add("breathy", "sweet")
esheeran.tag_list.add("breathy", "complex vocal runs")
awinehouse.tag_list.add("dark", "smoky")
hwilliams.tag_list.add("bright", "youthful")
adele.tag_list.add("warm", "soulful")

puts "Saving artist voice tags"
singers.each do |singer|
  singer.save
end

puts "Adding song tags"
billiejean.tag_list.add(mjackson.tag_list << ["funky", "pop"])
someonelikeyou.tag_list.add(adele.tag_list << ["belting", "ballad"])
torn.tag_list.add(nimbruglia.tag_list << ["bright", "love", "pop"])
beforehecheats.tag_list.add(cunderwood.tag_list << ["sassy", "country"])
cowboycasanova.tag_list.add(cunderwood.tag_list << ["sassy", "country"])
athousandyears.tag_list.add(cperri.tag_list << ["simple", "love"])
allofme.tag_list.add(jlegend.tag_list << ["falsetto", "love", "ballad"])
letitgo.tag_list.add(imenzel.tag_list << ["anthemic", "soundtrack"])
legohouse.tag_list.add(esheeran.tag_list << ["love", "acoustic"])
crymeariver.tag_list.add(jtimberlake.tag_list << ["funky", "pop"])
stillintoyou.tag_list.add(hwilliams.tag_list << ["rock", "love", "anthemic"])
onlyexception.tag_list.add(hwilliams.tag_list << ["love", "acoustic", "rock"])
aintitfun.tag_list.add(hwilliams.tag_list << ["rock", "layered harmonies"])

puts "Saving song tags"
songs.each do |song|
  song.save
end

users = []

puts "Creating users"
users << mandy = User.create(email: "mandy@example.com", password: "password", admin: true, artist: adele, range_low: adele.range_low, range_high: adele.range_high)
users << joe = User.create(email: "joe@example.com", password: "password", admin: false)

puts "Adding user voice tags"
mandy.tag_list.add(adele.tag_list)
joe.tag_list.add(mjackson.tag_list)

puts "Saving user voice tags"
users.each do |user|
  user.save
end

