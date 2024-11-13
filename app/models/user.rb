class User < ApplicationRecord
  validates :name, presence: true, length: { in: 3..15 }, uniqueness: true
  validates :email, presence: true
end
