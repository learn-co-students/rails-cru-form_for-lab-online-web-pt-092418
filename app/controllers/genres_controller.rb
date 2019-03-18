class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(strong_params(:name))
    @genre.save
    #byebug
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find
  end

  def edit
    @genre = find
  end

  def update
    @genre = find
    @genre.update(strong_params(:name))
    redirect_to genre_path(@genre)
  end
end
