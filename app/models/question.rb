class Question < ApplicationRecord
  validates :title, :detail, presence: { message: "は空欄にできません"}
end
