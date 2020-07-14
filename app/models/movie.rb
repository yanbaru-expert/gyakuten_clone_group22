class Movie < ApplicationRecord
  validates :title, :url, presence: true

  belongs_to :user
  has_many :watches
end
