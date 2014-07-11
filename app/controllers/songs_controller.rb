class SongsController < ApplicationController
helper_method :sort_column, :sort_direction
before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:tag]
      @songs = Song.joins(:artist).tagged_with(params[:tag]).order(sort_column + ' ' + sort_direction).preload(:artist)
      tag_name = params[:tag]
      @page_title = "Songs tagged with '#{tag_name}'"
    else
      @songs = Song.joins(:artist).all.order(sort_column + ' ' + sort_direction).preload(:artist)
      @page_title = "All Songs"
    end
  end

  def show
    @song = Song.find(params[:id])

    if @song.artist.alt_name?
      artist = @song.artist.alt_name
    else
      artist = @song.artist.name
    end

    title = @song.title

    # Begin Echonest Stuff
    song_info = Echowrap.song_search(
      artist: artist,
      title: title,
      results: 1,
      bucket: 'audio_summary')[0]

    @tempo = song_info.audio_summary.attrs[:tempo]

    echonest_key = song_info.audio_summary.attrs[:key]
    echonest_mode = song_info.audio_summary.attrs[:mode]
    @key = @song.key_name(echonest_key, echonest_mode)
  end

private

  def sort_column
    %w(title artists.name range_high range_low).include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    %w(asc desc).include?(params[:direction]) ? params[:direction] : "asc"
  end

  def song_params
    params.require(:song).permit(:title, :year, :key, :mode, :range_low, :range_high, { tag_list: [] }, artists_attributes: [:id, :name])
  end

end
