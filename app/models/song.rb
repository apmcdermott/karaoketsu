class Song < ActiveRecord::Base
  belongs_to :artist

  def midi_to_named(midi)
    note_letters = %w(A A# B C C# D D# E F F# G G#)
    octave = midi / 12 - 1
    index = midi % 12 + 3
    note_letters[index] + octave.to_s
  end
end
