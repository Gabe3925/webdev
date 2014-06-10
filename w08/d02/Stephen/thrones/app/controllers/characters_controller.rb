#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-06-10 11:38:25
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-06-10 12:32:33

class CharactersController < ApplicationController

  def index
    @characters = Character.order('created_at ASC')
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      render status: 200, nothing: true
    else
      render status: 400, nothing: true
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :dead)
  end
end
