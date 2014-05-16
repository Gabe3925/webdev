class BooksController < ApplicationController
  def new
    @author = Author.find(params[:author_id])
    @book = @author.books.new
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.new(book_params)

    if @book.save
      redirect_to @book
    else
      render "new"
    end
  end

  def show
    @book = Book.find(params[:id])
    @characters = @book.characters
  end

  private
  def book_params
    params.require(:book).permit(:title, :release_date, :genre)
  end
end
