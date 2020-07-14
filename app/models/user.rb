class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :texts
  has_many :movies
  has_many :watches
  has_many :reads
  # has_many :verified_text, through: :verifys, source: :text
end
