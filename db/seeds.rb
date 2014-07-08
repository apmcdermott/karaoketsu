Artist.delete_all
Song.delete_all

mjackson = Artist.create(name: "Michael Jackson", gender: "male", range_low: 61, range_high: 85, voice_type: "Tenor")
nimbruglia = Artist.create(name: "Natalie Imbruglia", gender: "female", range_low: 53, range_high: 70, voice_type: "Soprano")
cunderwood = Artist.create(name: "Carrie Underwood", gender: "female", range_low: 50, range_high: 80, voice_type: "Mezzo-Soprano")
cperri = Artist.create(name: "Christina Perri", gender: "female", range_low: 53, range_high: 72, voice_type: "Contralto")
jlegend = Artist.create(name: "John Legend", gender: "male", range_low: 60, range_high: 82, voice_type: "Baritone")
imenzel = Artist.create(name: "Idina Menzel", gender: "female", range_low: 53, range_high: 82, voice_type: "Mezzo-Soprano")
adele = Artist.create(name: "Adele", gender: "female", range_low: 48, range_high: 76, voice_type: "Contralto")

s1 = Song.create(title: "Billie Jean", artist: mjackson, range_low: 61, range_high: 85, key: "F# min")
s2 = Song.create(title: "Someone Like You", artist: adele, range_low: 52, range_high: 76, key: "A maj")
s3 = Song.create(title: "Torn", artist: nimbruglia, range_low: 53, range_high: 70, key: "Gb maj")
s4 = Song.create(title: "Before He Cheats", artist: cunderwood, range_low: 54, range_high: 73, key: "F# min")
s5 = Song.create(title: "Cowboy Casanova", artist: cunderwood, range_low: 57, range_high: 74, key: "D min")
s6 = Song.create(title: "A Thousand Years", artist: cperri, range_low: 53, range_high: 72, key: "Bb maj")
s7 = Song.create(title: "All of Me", artist: jlegend, range_low: 60, range_high: 82, key: "Ab maj")
s8 = Song.create(title: "Let It Go", artist: imenzel, range_low: 53, range_high: 75, key: "Ab maj")

s2.tag_list.add("belting", "warm tones", "soulful")
s3.tag_list.add("bright tones")
s4.tag_list.add("belting", "sassy")
s5.tag_list.add("belting")
s6.tag_list.add("ballad", "breathy", "sweet")
s7.tag_list.add("ballad", "belting", "falsetto")
s8.tag_list.add("belting", "soundtrack")
