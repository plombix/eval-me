class PageController < ApplicationController
  before_action :get_student, only: :evaluation
  before_action :get_eval, only: :evaluation

  def home
    @all_eval ||= Eval.all
  end

  def evaluation
    # binding.pry
    @questions = @eval.questions.sort_by { rand }
    @answers = @questions.map { |quest| [quest.statement, user_id: current_user.id, question_id: quest.id] }
  end

  private

  def get_student
    @student = current_user
  end

  def get_eval
    @eval = Eval.find(params[:id])
  end
end
