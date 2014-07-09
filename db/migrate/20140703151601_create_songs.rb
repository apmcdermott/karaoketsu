class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :title
      t.belongs_to :artist, index: true
      t.integer :year
      t.text :key
      t.text :mode
      t.integer :range_low
      t.integer :range_high
      t.timestamps
    end
  end
end
