class Artist < ActiveRecord::Base
  has_many :songs
  acts_as_taggable
  accepts_nested_attributes_for :songs, allow_destroy: true

  rails_admin do
    field :name
    field :alt_name
    field :gender
    field :voice_type
    field :range_low
    field :range_high
    field :tags
  end
end
