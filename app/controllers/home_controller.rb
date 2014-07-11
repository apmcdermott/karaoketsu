class HomeController < ApplicationController

  def index
    @tags = Song.tag_counts_on(:tags)
  end

  def dashboard
  end

end
