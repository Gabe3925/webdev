class CharactersController < ApplicationController

  def index
    @characters = Character.order(:created_at)

    respond_to do |format|
      format.html { render :index}
      format.json { render json: @characters}
    end
  end

  def create
    @character = Character.new(character_params)
    #if character creation is successful, send it back as json
    if @character.save
      render json: @character
    #otherwise, give an error
    else
      render status: 400, nothing: true
    end
  end

  def update
    @character = Character.find(params[:id])

    if character.update(character_params)
      render json: @character
    else
      render status: 400, nothing: true
    end
  end

  def destroy
    @character = Character.find(params[:id])

    if @character.destroy
      render json: {}
    else
      render status: 400, nothing: true
    end
  end

  private

  def character_params
    params.require(:name, :img_url, :coins)
  end

end
