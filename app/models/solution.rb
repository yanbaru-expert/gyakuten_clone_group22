class Solution < ApplicationRecord
  validates :answer,  presence: { message: "は空欄にできません"}
  belongs_to :question
end
