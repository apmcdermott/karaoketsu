class SongsController < ApplicationController

  def index
    @songs = Song.all
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
