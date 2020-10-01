class ArticlesAuthorsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @author = Author.find(params[:author_id])
    ArticleAuthor.create(article: @article, author: @author)
  end

  def destroy
    @article_author = ArticleAuthor.find(params[:id])
    @article = @article_author.article
    @author = @article_author.author
    @article_author.destroy
  end

  private

  def article_author_params
    params.require(:article_author).permit(:article_id, :author_id)
  end
end
