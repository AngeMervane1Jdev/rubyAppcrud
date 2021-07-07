class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post=Post.new
  end
 

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path, notice: "J'ai créé un post !"
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice:"J'ai supprimé le blog !"
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end
