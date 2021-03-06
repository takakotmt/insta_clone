class PostsController < ApplicationController
  skip_before_action :require_login, only: [:index]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  private
  def post_params
		params.require(:post).permit(:description, :photo)
	end
end
