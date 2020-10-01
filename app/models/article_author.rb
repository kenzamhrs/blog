class ArticleAuthor < ApplicationRecord
  belongs_to :articles
  belongs_to :authors
end
