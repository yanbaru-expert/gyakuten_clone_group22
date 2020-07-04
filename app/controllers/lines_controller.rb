class LinesController < ApplicationController
  validates :genre, :title, :content, presence: true
end
