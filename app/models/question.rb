class Question < ApplicationRecord
<<<<<<< HEAD
  validates :title, :detail, presence: true
  has_many :solutions
=======
  validates :title, :detail, presence: { message: "は空欄にできません"}
>>>>>>> 33e77efab585cb0a45bc40a6ae64f2a231c80f71
end
