class Song < ActiveRecord::Base
  belongs_to :artist

  def midi_to_named(midi)
    note_letters = %w(A B C D E F G)
    octave = midi / 12 - 1
  end
end
