class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update({
    name: params[:name],
    gender: params[:gender],
    date_of_birth: params[:date_of_birth],
    has_pseudonym: params[:has_pseudonym]
    })
  redirect_to('/authors/' + author.id.to_s)
  end


  def create
    Author.create(name: params[:name], date_of_birth: params[:date_of_birth], gender: params[:gender], has_pseudonym: params[:has_pseudonym])
    redirect_to('/authors')
  end

  def destroy
    author = Author.find(params[:id])
    author.destroy
    redirect_to('/authors')
  end

end
