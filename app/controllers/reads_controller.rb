class ReadsController < ApplicationController
  def create
    current_user.reads.create!(text_id: params[:text_id])
    redirect_to texts_path
  end
  
  def destroy
    current_user.reads.find_by(text_id: params[:text_id]).destroy!
    redirect_to texts_path
  end
end