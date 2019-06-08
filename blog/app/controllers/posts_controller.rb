class PostsController < ApplicationController
  def index
    @posts = Post.all
    @authors = Author.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(title: params[:post][:title], text: params[:post][:text], author_id: params[:post][:author_id])

    if @post.save
      redirect_to posts_path, notice: "Созадан пост #{@post.id}"
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:post][:title], text: params[:post][:text], author_id: params[:post][:author_id])

    if @post.save
      redirect_to posts_path, notice: "Пост ##{@post.id} изменён"
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to posts_path, notice: "Пост удалён"
  end
end
