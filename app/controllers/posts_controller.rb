class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    if params[:id].is_a?(String)
      @post = Post.where(slug: params[:id]).first
    else
      @post = Post.where(id: params[:id]).first
    end
  end
end
