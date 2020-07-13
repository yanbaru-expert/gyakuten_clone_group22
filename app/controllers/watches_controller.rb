class WatchesController < ApplicationController
  before_action :set_movie
  def create
    @watch = current_user.watches.create!(movie_id: params[:movie_id])
    @watch.save
    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end
  
  def destroy
    @watch = current_user.watches.find_by(movie_id: params[:movie_id]).destroy!
    @watch.destroy
    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end

  private
  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
  
end