class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[new create]

  def new
    @post = Post.new
  end

  def create
    user_id = session[:user_id]
    @post = Post.new(user_id: user_id, title: params[:post][:title], content: params[:post][:content])
    @post.save
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  private

  def logged_in_user
    redirect_to posts_path unless logged_in?
  end
end
