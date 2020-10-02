class Article < ApplicationRecord
  has_many :authors, through: :articles_authors
  has_many :comments, as: :commentable

  def article_author(article)
    self.article_author.find_by(article: article)
  end
end
