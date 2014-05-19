class ArtistsController < ActionController::Base

  def new
    @artist = Artist.new

  end

  def create
    @artist = Artist.create(params_artist)
    redirect_to @artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  def params_artist
    params.require(:artist).permit( :name, :genre, :photo_url )
  end

end
