class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all.order(created_at: :desc)
  end
<<<<<<< HEAD
  def show
    @question = Question.find(params[:id])
    @solution = Solution.new
    @solutions = @question.solutions
  end
end
=======

  def create
    @question = Question.new(question_params)
    if @question.save
        redirect_to questions_path, notice: "投稿に成功しました。"
    else
        @questions = Question.all.order(created_at: :desc)
        render :index
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
>>>>>>> 33e77efab585cb0a45bc40a6ae64f2a231c80f71
