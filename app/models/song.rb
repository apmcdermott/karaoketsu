class Song < ActiveRecord::Base
  belongs_to :artist
  acts_as_taggable
  delegate :name, to: :artist, prefix: true, allow_nil: true

  # def midi_to_named(midi)
  #   note_letters = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "A\u266D", "A", "B\u266D", "B"]
  #   octave = midi / 12 - 1
  #   index = midi % 12
  #   note_letters[index]+octave.to_s
  # end

  def key_name(key_number, mode_number)
    key_letters = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "A\u266D", "A", "B\u266D", "B"]
    key_modes = %w(minor major)
    key_letters[key_number] + ' ' + key_modes[mode_number]
  end

  rails_admin do
    field :title
    field :artist_name do
      label "Artist"
    end
    field :range_low
    field :range_high
    field :tags
  end
end
