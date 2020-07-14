class TextsController < ApplicationController
  def index
    @texts = Text.all
    @read_text_ids = current_user.reads.pluck(:text_id)
  end
  
  def show
    @text = Text.find(params[:id])
    @read_text_ids = current_user.reads.pluck(:text_id)
  end
  

end