class Author < ApplicationRecord
  has_many :articles, through: :articles_authors
  has_many :comments, as: :commentable

  def article_author(author)
    self.article_author.find_by(author: author)
  end
end
