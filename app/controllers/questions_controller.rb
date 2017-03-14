class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    if @question.save
      UserMailer.question(@question).deliver_later
    else
      flash.now[:errors] = @question.errors.values.flatten
    end
    render 'create'
  end

  private

   def question_params
    params.require(:question).permit(:name, :phone, :message, :email)
  end
end
