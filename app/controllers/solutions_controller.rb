class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    if @solution.save
      redirect_to question_url(@solution.question_id), notice: "回答を投稿しました"
    else
      @solutions = @question.solutions
      flash.now[:alert] = "回答を入力してください"
      render "questions/show"
    end
  end

  private

    def solution_params
      params.permit(:answer)
    end
  
end
