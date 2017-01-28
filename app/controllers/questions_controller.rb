class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    unless @question.save
      flash.now[:errors] = @question.errors.values.flatten
    end
    render 'create'
  end

  private

   def question_params
    params.require(:question).permit(:name, :phone, :message)
  end
end
