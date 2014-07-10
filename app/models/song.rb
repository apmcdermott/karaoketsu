class Song < ActiveRecord::Base
  belongs_to :artist
  acts_as_taggable
  delegate :name, to: :artist, prefix: true, allow_nil: true

  def key_name(key_number, mode_number)
    key_letters = ["C", "C\u266F", "D", "E\u266D", "E", "F", "F\u266F", "G", "A\u266D", "A", "B\u266D", "B"]
    key_modes = %w(minor major)
    key_letters[key_number] + ' ' + key_modes[mode_number]
  end
end
