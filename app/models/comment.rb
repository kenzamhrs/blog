class Comment < ApplicationRecord
  attr_accessor :body
  belongs_to :commentable,  polymorphic: true
end
