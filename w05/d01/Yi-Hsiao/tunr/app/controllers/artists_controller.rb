class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params_artist)

    if @artist.save
      redirect_to @artist
    else
      render "new"
    end
  end

  def show
    @songs = @artist.songs
  end

  def edit
  end

  def update
    @artist.assign_attributes(params_artist)

    if @artist.save
      redirect_to @artist
    else
      render "edit"
    end
  end

  def destroy
    @artist.destroy

    if @artist.destroyed?
      redirect_to artists_path
    else
      render @artist
    end
  end

  private
  def params_artist
    params.require(:artist).permit(:name, :genre, :photo_url)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
