class PostsController < ApplicationController 
  def index 
    @posts = Post.all 
  end 

  def new 
    @categories = Category.all
    @post = Post.new
  end 

  def create
    @post = Post.create(posts_params)
  end 


  def show 
    @post = Post.find(params[:id])
  end 

  def edit 
    @categories = Category.all
    @post = Post.find(params[:id])
  end 

  def update 
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end 

  private 

  def post_params 
    params.require(:post).permit(:title, :description)
  end 

end 