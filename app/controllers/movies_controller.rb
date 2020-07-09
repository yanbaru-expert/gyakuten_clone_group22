class MoviesController < ApplicationController
  def index
    @movies = Movie.all.page(params[:page]).per(18)

    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end
end