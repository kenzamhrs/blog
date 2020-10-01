class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    @commentable = @author
    @comments = @commentable.comments
    @comment = Comment.new
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to author_path(@author)
  end

  private

  def authors_params
    params.require(:author).permit(:name)
  end
end
