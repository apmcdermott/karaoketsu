class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :name
      t.text :alt_name
      t.text :gender
      t.integer :range_low
      t.integer :range_high
      t.text :voice_type
      t.timestamps
    end
  end
end
