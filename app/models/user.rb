class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length: { in: 3..15 }, uniqueness: true
  validates :email, presence: true
end
