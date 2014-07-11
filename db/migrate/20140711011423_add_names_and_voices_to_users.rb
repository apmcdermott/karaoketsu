class AddNamesAndVoicesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :range_low, :integer, default: 0
    add_column :users, :range_high, :integer, default: 127
  end
end
