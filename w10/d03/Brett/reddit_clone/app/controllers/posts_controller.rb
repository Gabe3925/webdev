class PostsController < ApplicationController

  def index
    @posts = Post.order(:upvotes :desc)

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @posts }
    end
  end

  def create
    @post = post.new(post_params)

    if @post.save
      render json: @post
    else
      render status: 400, nothing: true
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      render json: @post
    else
      render status: 400, nothing: true
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      render json: {}
    else
      render status: 400, nothing: true
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :upvotes)
  end

end
