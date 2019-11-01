class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    redirect_to posts_path(@posts)
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
