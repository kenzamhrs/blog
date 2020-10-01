class CommentsController < ApplicationController

  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new comment_params
    if @comment.save
      redirect_to [@commentable, :comments], notice: "Your comment was successfully posted"
    else
      render :new
    end
  end

  private

  def commment_params
    params.require(:comment).permit(:body)
  end
end
