class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    # post = Post.create({content: "ใในใ"})
    render json:{ post: post }
  end
end
