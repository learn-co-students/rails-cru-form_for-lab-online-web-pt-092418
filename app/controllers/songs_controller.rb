class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(strong_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = find
  end

  def edit
    @song = find
  end

  def update
    @song = find
    @song.update(strong_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

end
