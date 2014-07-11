class AddNamesAndVoicesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.belongs_to :artist, index: true
      t.integer :range_low, default: -1
      t.integer :range_high, default: 128
    end
  end
end
