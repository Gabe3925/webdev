class DogsController < ApplicationController

	def index
		@dogs = Dog.all
		render :index
	end

	def new
		render :new
	end

	def create
		render :form
	end
end
