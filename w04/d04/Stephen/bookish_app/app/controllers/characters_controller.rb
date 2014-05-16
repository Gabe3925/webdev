#!/usr/bin/ruby
# @Author: stephenstanwood
# @Date:   2014-05-15 15:31:23
# @Last Modified by:   stephenstanwood
# @Last Modified time: 2014-05-15 16:40:51

class CharactersController < ApplicationController

  # Displays all of the characters in the database
  def index
    @characters = Character.all
    render :index
  end

  # Creates a new character in the database
  def create
    Character.create(
      name: params[:name],
      gender: params[:gender],
      quirk: params[:quirk],
      book_id: params[:book_id])
    redirect_to '/characters'
  end

  # Offers the user the chance to add a character
  def new
    render :new
  end

  # Shows the details for a specific character
  def show
    @character = Character.find(params[:id])
    render :show
  end

  # Destroys a given character in the database
  def destroy
    Character.find(params[:id]).destroy
    redirect_to '/characters'
  end

end
