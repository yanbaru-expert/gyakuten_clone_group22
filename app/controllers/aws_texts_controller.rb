class AwsTextsController < ApplicationController
  def index
    @aws_texts = AwsText.all.order("id asc")
  end
  
end