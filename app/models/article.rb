class Article < ApplicationRecord
  has_many :authors, through: :articles_authors
  has_many :comments, as: :commentable
end
