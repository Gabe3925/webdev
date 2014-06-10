class SongsController < ApplicationController
  def index
    @songs = Song.order created_at: :asc
  end

  def create
    @song = Song.new song_params
    if @song.save
      render json: @song
    else
      head :bad_request
    end
  end

  private
  def song_params
    params.require(:song).permit :artist, :preview_url, :title
  end
end
