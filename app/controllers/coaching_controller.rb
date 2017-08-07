class CoachingController < ApplicationController
  # @ask = params[:question]

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message.include?("?")
    return "Silly question, get dressed and go to work!"

  elsif your_message == "I am going to work right now!"
    return ""

  else
    return "I don't care, get dressed and go to work!"
  end
  end
end


