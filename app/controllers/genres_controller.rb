class GenresController < ApplicationController

  def new
    @genre=Genre.new
  end

  def create
    @genre = Genre.new(genre_params(:name, :bio))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params(:name, :bio))
    redirect_to genre_path(@genre)
  end

  private
  
  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
