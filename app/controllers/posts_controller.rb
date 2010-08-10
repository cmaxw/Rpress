class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end
  
  def create
    if request.post?
      @post = Post.new(params[:post])
      if @post.save
        redirect_to "/post/#{@post.id}"
      end
    else
      @post = Post.new
    end
  end
  
  def edit
    @post = Post.find_by_id(params[:id])
    if request.post?
      @post.update_attributes(params[:post])
      if @post.save
        redirect_to "/post/#{@post.id}"
      end
    end
  end
  
  def destroy
    Post.destroy(params[:id])
    redirect_to '/'
  end
end
