class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(title: question_params[:title], detail: question_params[:detail])
    redirect_to action: :index
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
