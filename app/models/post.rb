class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4, maximum: 50 }
  validates :description, length: { minimum: 10, maximum: 500 }
  has_rich_text :description

  belongs_to :user
  has_many :comments, dependent: :destroy
end
