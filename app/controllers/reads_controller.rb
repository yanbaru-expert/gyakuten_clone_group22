class ReadsController < ApplicationController
  before_action :set_text
  def create
    @read = current_user.reads.create(text_id: params[:text_id])
    @read.save
    @read_text_ids = current_user.reads.pluck(:text_id)

  end
  
  def destroy
    @read = current_user.reads.find_by(text_id: params[:text_id])
    @read.destroy
    @read_text_ids = current_user.reads.pluck(:text_id)
  end

  private
  def set_text
    @text = Text.find(params[:text_id])
  end
  
end