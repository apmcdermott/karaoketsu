class AddNamesAndVoicesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :sounds_like, :integer
    add_column :users, :voice_tags, :string
    add_column :users, :range_low, :integer
    add_column :users, :range_high, :integer
  end
end
