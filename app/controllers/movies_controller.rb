class MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.all.page(params[:page]).per(18)
  end
end