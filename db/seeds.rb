Artist.delete_all
Song.delete_all

mjackson = Artist.create(name: "Michael Jackson", gender: "male", range_low: 61, range_high: 85, voice_type: "Tenor")
jlegend = Artist.create(name: "John Legend", gender: "male", range_low: 60, range_high: 82, voice_type: "Baritone")
jtimberlake = Artist.create(name:"Justin Timberlake", gender: "male", range: "F#2-B5", voice_type: "Tenor")
esheeran = Artist.create(name:"Ed Sheeran", gender: "male", range_low: 57, range_high: 81, voice_type: "Tenor")

nimbruglia = Artist.create(name: "Natalie Imbruglia", gender: "female", range_low: 53, range_high: 70, voice_type: "Soprano")
cunderwood = Artist.create(name: "Carrie Underwood", gender: "female", range_low: 50, range_high: 80, voice_type: "Mezzo-Soprano")
cperri = Artist.create(name: "Christina Perri", gender: "female", range_low: 53, range_high: 72, voice_type: "Contralto")
imenzel = Artist.create(name: "Idina Menzel", gender: "female", range_low: 53, range_high: 82, voice_type: "Mezzo-Soprano")
adele = Artist.create(name: "Adele", gender: "female", range_low: 48, range_high: 76, voice_type: "Contralto")
awinehouse = Artist.create(name: "Amy Winehouse", gender: "female", range_low: 50, range_high: 87, voice_type: "Contralto")
ejames = Artist.create(name: "Etta James", gender: "female", range_low: 44, range_high: 83, voice_type: "Contralto")
fhill = Artist.create(name: "Faith Hill", gender: "female", range_low: 52, range_high: 76, voice_type: "Mezzo-Soprano")
hwilliams = Artist.create(name: "Hayley Williams", gender: "female", range_low: 52, range_high: 93, voice_type: "Mezzo-Soprano")

billiejean = Song.create(title: "Billie Jean", artist: mjackson, range_low: 61, range_high: 85, key: "F#", mode: "minor")
someonelikeyou = Song.create(title: "Someone Like You", artist: adele, range_low: 52, range_high: 76, key: "A", mode: "major")
torn = Song.create(title: "Torn", artist: nimbruglia, range_low: 53, range_high: 70, key: "Gb", mode: "major")
beforehecheats = Song.create(title: "Before He Cheats", artist: cunderwood, range_low: 54, range_high: 73, key: "F#", mode: "minor")
cowboycasanova = Song.create(title: "Cowboy Casanova", artist: cunderwood, range_low: 57, range_high: 74, key: "D", mode: "minor")
athousandyears = Song.create(title: "A Thousand Years", artist: cperri, range_low: 53, range_high: 72, key: "Bb", mode: "major")
allofme = Song.create(title: "All of Me", artist: jlegend, range_low: 60, range_high: 82, key: "Ab", mode: "major")
letitgo = Song.create(title: "Let It Go", artist: imenzel, range_low: 53, range_high: 75, key: "Ab", mode: "major")
legohouse = Song.create(title: "Lego House", artist: esheeran, range_low: 57, range_high: 81, key: "A", mode: "major")


someonelikeyou.tag_list.add("belting", "warm", "soulful")
someonelikeyou.save
torn.tag_list.add("bright")
torn.save
beforehecheats.tag_list.add("belting", "sassy")
beforehecheats.save
cowboycasanova.tag_list.add("belting")
cowboycasanova.save
athousandyears.tag_list.add("breathy", "sweet")
athousandyears.save
allofme.tag_list.add("belting", "falsetto")
allofme.save
letitgo.tag_list.add("belting", "bright")
letitgo.save
