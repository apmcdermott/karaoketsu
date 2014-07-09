class Song < ActiveRecord::Base
  belongs_to :artist
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  delegate :name, to: :artist, prefix: true, allow_nil: true

  def midi_to_named(midi)
    note_letters = %w(C C# D Eb E F F# G Ab A Bb B)
    octave = midi / 12 - 1
    index = midi % 12
    note_letters[index]+octave.to_s
  end

  def key_name(key_number, mode_number)
    key_letters = %w(C C# D Eb E F F# G Ab A Bb B)
    key_modes = %w(minor major)
    key_letters[key_number] + ' ' + key_modes[mode_number]
  end
end
