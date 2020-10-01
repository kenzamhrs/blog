class Authors::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Author.find(params[:author_id])
  end
end
