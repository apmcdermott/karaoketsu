# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Weezer
# Say It Ain't So

# Natalie Imbruglia
# Torn

# Kings of Leon
# Sex on Fire

# Adele
# Someone Like You

# Radiohead
# Creep

# Madonna
# Like a Prayer

# Bruce Springsteen
# Born in the U.S.A.

# Sir-Mix-A-Lot
# Baby Got Back

# The B-52's
# Love Shack

# Joan Jett
# I Love Rock N’ Roll

# Sublime
# Santeria

# Alannah Myles
# Black Velvet

# Journey
# Don’t Stop Believin’

# Bon Jovi
# Livin' On A Prayer


michaeljackson = Artist.create(name: "Michael Jackson", range_low: 43, range_high: 85)
weezer = Artist.create(name: "Weezer", range_low: 59, range_high: 80)

billiejean = Song.create(title: "Billie Jean", artist: michaeljackson, range_low: 61, range_high: 85)
sayitaintso = Song.create(title: "Say It Ain't So", artist: weezer, range_low: 59, range_high: 80)









