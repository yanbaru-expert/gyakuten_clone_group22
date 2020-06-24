class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end
  def show
    @question = Question.find(params[:id])
    @solution = Solution.new
    @solutions = @question.solutions
  end
end