class QuestionsController < ApplicationController
  def ask() end

  def home() end

  def answer
    @answers = ['Great', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:question]
    @answers = if @question.include?('?')
                 @answers[1]
               elsif @question == 'i am going to work right now!'
                 @answers[0]
               else
                 @answers[2]
               end
  end
end
