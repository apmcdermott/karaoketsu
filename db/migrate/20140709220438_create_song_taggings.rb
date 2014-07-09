class CreateSongTaggings < ActiveRecord::Migration
  def change
    create_table :song_taggings do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :song, index: true

      t.timestamps
    end
  end
end
