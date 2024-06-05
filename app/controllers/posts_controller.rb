class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  
  def new
  end

  def create
    Post.create(contents: params[:contents])
    redirect_to "/posts"
  end

end
