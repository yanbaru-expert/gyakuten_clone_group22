class SolutionsController < ApplicationController

  def create
    @solution = Solution.new(solution_params)
    @question = @solution.question
    @solutions = @question.solutions
    if @solution.save
      redirect_to question_url(@solution.question_id), notice: "回答を投稿しました"
    else
      flash.now[:alert] = "回答を入力してください"
      render "questions/show"
    end
  end

  private

    def solution_params
      params.permit(:answer, :question_id)
    end
  
end
