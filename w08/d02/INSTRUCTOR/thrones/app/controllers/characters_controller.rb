class CharactersController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @characters = Character.order("created_at ASC")
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      render status: 200, nothing: true
    else
      render status: 400, nothing: true
    end
  end

  def create
    binding.pry
  end

  private

  def character_params
    params.require(:character).permit(:name, :dead)
  end

end