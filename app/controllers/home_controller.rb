class HomeController < ApplicationController

  def index
  end

  def dashboard
    @songs_in_range = Song.where("range_low >= ? AND range_high <= ?", current_user.range_low, current_user.range_high)
    @songs_in_style = Song.tagged_with(current_user.artist.tag_list)
  end

end
