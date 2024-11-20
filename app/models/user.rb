class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {
    in: 1..20
  }

  validates :email, presence: true, uniqueness: true

  has_many :posts
end
