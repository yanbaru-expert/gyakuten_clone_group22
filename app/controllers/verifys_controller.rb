class VerifysController < ApplicationController

  def create
    verify = current_user.verifys.create(text_id: params[:text_id])
    
    binding.pry
    
    verify.save
  end
  
  def delete
    verify = current_user.verifys.new(text_id: params[:text_id])
    verify.destroy
  end  


end