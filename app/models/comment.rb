class Comment < ApplicationRecord
  attr_accessible :body, :commenter, :post
  belongs_to :post
end
