class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render :index
  end

  def new
    render :new
  end

  def create
    Author.create(
      name: params[:name], 
      birth: params[:birth], 
      gender: params[:gender], 
      has_pseudo: params[:has_pseudo] || false
    )
    redirect_to '/authors'
  end

  def show
    @author = Author.find(params[:id])
    render :show
  end

end # END OF CLASS
