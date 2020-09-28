class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, length: { in: 3..16 }, uniqueness: true

  has_many :posts
  has_many :comments
end
