class CharactersController < ApplicationController
protect_from_forgery with: :null

  def index
    @characters = Character.all
  end

  def update
    
  end
end
