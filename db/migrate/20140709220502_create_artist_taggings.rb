class CreateArtistTaggings < ActiveRecord::Migration
  def change
    create_table :artist_taggings do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :artist, index: true

      t.timestamps
    end
  end
end
