class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :find_post, only: [:show, :destroy, :edit, :update]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    
  end

  def show
    

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:id, :toptitle, :topdescription, :title, :description, :url, :image).merge(user_id: current_user.id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
