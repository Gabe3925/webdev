class MoviesController < ApplicationController

  def index
    @movies = Movie.all

    if @movies
      render json: @movies
    else
      render status: 400, nothing: true
    end
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie
    else
      render status: 400, nothing: true
    end
  end

  def destroy

  end

  private

  def movie_params
    params.require(:movie).permit(:title, :imdb_id)
  end

end
