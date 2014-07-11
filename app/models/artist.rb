class Artist < ActiveRecord::Base
  has_many :songs
  has_many :users
  acts_as_taggable
  accepts_nested_attributes_for :songs, allow_destroy: true
end
