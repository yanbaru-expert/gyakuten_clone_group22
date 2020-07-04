class Line < ApplicationRecord
  validates :genre, :title, :content, presence: true
end
