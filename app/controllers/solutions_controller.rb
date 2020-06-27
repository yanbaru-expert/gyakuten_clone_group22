class SolutionsController < ApplicationController

  def create
    @solution = Solution.new(params_solution)
    @solution.save
    redirect_to question_url(@solution.question_id), notice: "回答を投稿しました"
  end

  private

    def params_solution
      params.permit(:answer, :question_id)
    end
  
end
