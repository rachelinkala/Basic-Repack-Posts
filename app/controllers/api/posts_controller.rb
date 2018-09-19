class Api::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    render json: Post.all.order(created_at: :desc)
  end

  def show
    render json: @post
  end

  def create
    post = Post.cretae(post_params)
    if post.save
      render json: post
    else
      render json: { errors: app.errors.full_messgaes.join(',')}, status: 422
    end
  end

  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: { errors: app.errors.full_messgaes.join(',')}, status: 422
  end

  def destroy
    @post.destroy
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:name, :content)
    end

end
