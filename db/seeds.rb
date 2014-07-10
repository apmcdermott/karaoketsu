"Deleting artists, songs, and users"
Artist.delete_all
Song.delete_all
User.delete_all

puts "Creating admin"
mandy = User.create(email: "mandy@example.com", password: "amoreappropriatepassword", admin: true)

puts "Creating dude singers"
mjackson = Artist.create(name: "Michael Jackson", gender: "male", range_low: 61, range_high: 85, voice_type: "Tenor")
jlegend = Artist.create(name: "John Legend", gender: "male", range_low: 60, range_high: 82, voice_type: "Baritone")
jtimberlake = Artist.create(name:"Justin Timberlake", gender: "male", range_low: 42, range_high: 83, voice_type: "Tenor")
esheeran = Artist.create(name:"Ed Sheeran", gender: "male", range_low: 57, range_high: 81, voice_type: "Tenor")

puts "Creating lady singers"
nimbruglia = Artist.create(name: "Natalie Imbruglia", gender: "female", range_low: 53, range_high: 70, voice_type: "Soprano")
cunderwood = Artist.create(name: "Carrie Underwood", gender: "female", range_low: 50, range_high: 80, voice_type: "Mezzo-Soprano")
cperri = Artist.create(name: "Christina Perri", gender: "female", range_low: 53, range_high: 72, voice_type: "Contralto")
imenzel = Artist.create(name: "Idina Menzel", gender: "female", range_low: 53, range_high: 82, voice_type: "Mezzo-Soprano")
adele = Artist.create(name: "Adele", gender: "female", range_low: 48, range_high: 76, voice_type: "Contralto")
awinehouse = Artist.create(name: "Amy Winehouse", gender: "female", range_low: 50, range_high: 87, voice_type: "Contralto")
hwilliams = Artist.create(name: "Hayley Williams", alt_name: "Paramore", gender: "female", range_low: 46, range_high: 78, voice_type: "Mezzo-Soprano")

puts "Creating songs"
billiejean = Song.create(title: "Billie Jean", artist: mjackson, range_low: 61, range_high: 85, key: "F\u266F", mode: "minor")
someonelikeyou = Song.create(title: "Someone Like You", artist: adele, range_low: 52, range_high: 76, key: "A", mode: "major")
torn = Song.create(title: "Torn", artist: nimbruglia, range_low: 53, range_high: 70, key: "Gb", mode: "major")
beforehecheats = Song.create(title: "Before He Cheats", artist: cunderwood, range_low: 54, range_high: 73, key: "F#", mode: "minor")
cowboycasanova = Song.create(title: "Cowboy Casanova", artist: cunderwood, range_low: 57, range_high: 74, key: "D", mode: "minor")
athousandyears = Song.create(title: "A Thousand Years", artist: cperri, range_low: 53, range_high: 72, key: "Bb", mode: "major")
allofme = Song.create(title: "All of Me", artist: jlegend, range_low: 60, range_high: 82, key: "Ab", mode: "major")
letitgo = Song.create(title: "Let It Go", artist: imenzel, range_low: 53, range_high: 75, key: "Ab", mode: "major")
legohouse = Song.create(title: "Lego House", artist: esheeran, range_low: 57, range_high: 81, key: "A", mode: "major")
crymeariver = Song.create(title: "Cry Me a River", artist: jtimberlake, range_low: 60, range_high: 83, key: "G#", mode: "minor")
stillintoyou = Song.create(title: "Still Into You", artist: hwilliams, range_low: 0, range_high: 127)

puts "Adding tags"
someonelikeyou.tag_list.add("belting", "warm", "soulful")
torn.tag_list.add("bright")
beforehecheats.tag_list.add("belting", "sassy")
cowboycasanova.tag_list.add("belting")
athousandyears.tag_list.add("breathy", "sweet")
allofme.tag_list.add("belting", "falsetto")
letitgo.tag_list.add("belting", "bright")

puts "Saving tags"
someonelikeyou.save
torn.save
beforehecheats.save
cowboycasanova.save
athousandyears.save
allofme.save
letitgo.save
