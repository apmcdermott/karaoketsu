class Artist < ActiveRecord::Base
  has_many :songs
  acts_as_taggable
  accepts_nested_attributes_for :songs, allow_destroy: true

  # def midi_to_named(midi)
  #   note_letters = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "A\u266D", "A", "B\u266D", "B"]
  #   octave = midi / 12 - 1
  #   index = midi % 12
  #   note_letters[index]+octave.to_s
  # end

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
