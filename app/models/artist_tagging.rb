class ArtistTagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :artist
end
