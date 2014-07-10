class Artist < ActiveRecord::Base
  has_many :songs
  acts_as_taggable
  accepts_nested_attributes_for :songs, allow_destroy: true
end
