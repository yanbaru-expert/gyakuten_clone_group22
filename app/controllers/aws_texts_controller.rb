class AwsTextsController < ApplicationController
  before_action :authenticate_user!

  def index
    @aws_texts = AwsText.all.order("id asc")
  end

  def show
    @aws_text = AwsText.find(params[:id])
  end
  
  
end