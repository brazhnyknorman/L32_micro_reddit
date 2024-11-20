class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 1..50 }
  validates :link, presence: true, length: { minimum: 2 }

  has_many :comments
  belongs_to :user
end
