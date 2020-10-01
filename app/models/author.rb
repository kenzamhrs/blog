class Author < ApplicationRecord
  has_many :articles, through: :articles_authors
end
