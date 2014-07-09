class Tag < ActiveRecord::Base
  has_many :song_taggings
  has_many :artist_taggings
  has_many :songs, through: :song_taggings
  has_many :artists, through: :artist_taggings
end
