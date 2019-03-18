class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(strong_params(:name, :bio))
    @artist.save
    #byebug
    redirect_to artist_path(@artist)
  end

  def show
    @artist = find
  end

  def edit
    @artist = find
  end

  def update
    @artist = find
    @artist.update(strong_params(:name, :bio))
    redirect_to artist_path(@artist)
  end
end
