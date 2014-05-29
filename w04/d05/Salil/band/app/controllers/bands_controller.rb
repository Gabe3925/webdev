class BandsController < ApplicationController

   before_action :find_band, only: [:show, :edit, :update, :destroy]

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.create(band_params)
    redirect_to @band
  end

  def show
  end

  def edit
  end

  def update
    @band.update(band_params)
    redirect_to @band
  end

  def destroy
    @band.destroy
    redirect_to band_path
  end

  private
  def find_band
    @band = Band.find(params[:id])
  end

  def band_params
    params.require(:band).permit(:name, :genre, :has_profanity, :video_url)
  end

end