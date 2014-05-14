class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  
  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    uploaded_image = params[:dog][:image]
    binding.pry
    # image_extension = uploaded_image.original_filename.split(".")[-1]



    # File.open(Rails.root.join("assets", "images", "wb")) do |image|
    #   image.write(uploaded_image.read)
    # end
    
    # if dog record is created, show user the newly created dog
    # if the dog doesn't meet requirements, redirect users back to form
    if @dog.save
      redirect_to @dog
    else
      render "new"
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private
    def dog_params
      params.require(:dog).permit(:name, :age)
    end
end
