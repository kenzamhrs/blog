class Article < ApplicationRecord
  has_many :authors, through: :articles_authors
end