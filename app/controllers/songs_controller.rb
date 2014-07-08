class SongsController < ApplicationController

  def index
    if params[:tag]
      @songs = Song.joins(:artist).tagged_with(params[:tag]).order(params[:sort]).preload(:artist)
      tag_name = params[:tag]
      @page_title = "Tagged with '#{tag_name}'"
    else
      @songs = Song.joins(:artist).all.order(params[:sort])
      @page_title = "All Songs"
    end
  end

  def show
    @song = Song.find(params[:id])
    artist = @song.artist.name
    title = @song.title

    # Begin Echonest Stuff
    song_info = Echowrap.song_search(
      artist: artist,
      title: title,
      results: 1,
      bucket: 'audio_summary')[0]

    @tempo = song_info.audio_summary.attrs[:tempo]

  end


end
