class Comment < ApplicationRecord
  validates :message, length: { in: 1..500 }

  belongs_to :user
  belongs_to :post
end
