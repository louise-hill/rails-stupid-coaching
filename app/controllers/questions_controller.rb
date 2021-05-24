class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.present?
      @answer = 'Great' if @question.downcase == 'i am going to work'
      @answer = 'Silly question, get dressed and go to work!' if @question.downcase.end_with?('?')
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
