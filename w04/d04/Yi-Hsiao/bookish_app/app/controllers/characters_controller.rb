class CharactersController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @character = @book.characters.new
  end

  def create
    @book = Book.find(params[:book_id])
    @character = Character.new(character_params)

    if @character.save
      @book.characters << @character
      redirect_to @character
    else
      render "new"
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      redirect_to @character
    else
      render "edit"
    end
  end

  private
  def character_params
    params.require(:character).permit(:name, :gender, :quirk, :book_ids)
  end
end
