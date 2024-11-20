class Comment < ApplicationRecord
  validates :message, length: { in: 1..500 }
end
