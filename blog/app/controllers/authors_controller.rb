class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.create(first_name: params[:author][:first_name], last_name: params[:author][:last_name])

    if @author.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(first_name: params[:author][:first_name], last_name: params[:author][:last_name])
    if @author.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
    @author = Author.find(params[:id]).destroy
    redirect_to posts_path, notice: "Автор удалён"
  end
end
