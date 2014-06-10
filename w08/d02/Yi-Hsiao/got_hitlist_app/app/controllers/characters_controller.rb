class CharactersController < ApplicationController
  def index
    @characters = Character.order(created_at: :asc)
  end

  def create
    @character = Character.new char_params
    if @character.save
      render json: @character
    else
      head :bad_request
    end
  end

  def update
    character = Character.find params[:id]
    if character.update char_params
      head :ok
    else
      head :bad_request
    end
  end

  private
  def char_params
    params.require(:character).permit :name, :dead
  end
end
