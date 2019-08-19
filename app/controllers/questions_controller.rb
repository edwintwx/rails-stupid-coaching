class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].capitalize
    @reply = "I don't care, get dressed and go to work!"
    @reply = 'Great!' if @question == 'I am going to work'
    @reply = 'Silly question, get dressed and go to work!' if @question[-1] == '?'
  end
end
