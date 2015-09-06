class PostsController < ApplicationController
  def index
    render 'posts/index'
  end

  def new

  end

  def show
    @post = Post.find(params[:id])
    render :show
  end

end
