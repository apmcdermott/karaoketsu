class SongTagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :song
end
