class Author < ApplicationRecord
  has_many :articles, through: :articles_authors
  has_many :comments, as: :commentable
end
