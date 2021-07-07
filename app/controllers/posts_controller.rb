class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def confirm
    @post= Post.new(post_params)
    render :new if @post.invalid?
  end

  def index
    @posts = Post.all
  end

  def new
    @post=Post.new
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice:"J'ai supprimé le blog !"
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "J'ai édité le blog !"
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
    if @post.save
      redirect_to posts_path, notice: "J'ai créé un post !"
    else
      render :new
    end
  end
end
  def confirm
    @post = Post.new(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
