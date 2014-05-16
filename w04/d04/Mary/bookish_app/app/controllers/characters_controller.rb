class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @book_id = params[:book_id]
    @author_id = Book.find(params[:author_id])

  end

  def create
    Character.create(
      name: params[:name],
      gender: params[:gender],
      quirk: params[:quirk],
      book_id: params[:book_id]
    )
    redirect_to("/characters")
  end

end
