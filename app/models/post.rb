class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { minimum: 3 }
  validates :body, length: { minimum: 15 }

  belongs_to :user
  has_many :comments
end
