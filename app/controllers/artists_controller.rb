class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.order(sort_column + ' ' + sort_direction)
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  private


  def sort_column
    %w(name gender voice_type range_high range_low).include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w(asc desc).include?(params[:direction]) ? params[:direction] : "asc"
  end

end
