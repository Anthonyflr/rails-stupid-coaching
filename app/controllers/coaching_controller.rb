class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    if @question == "I am going to work right now!"
      @partialanswer = ""
    elsif @question.include? "?"
      @partialanswer = "Silly question, get dressed and go to work!"
    elsif @question == "I AM GOING TO WORK RIGHT NOW!"
      @partialanswer = ""
    else
     @partialanswer = "I don't care, get dressed and go to work!"
   end
   if @question == @question.upcase && @question == "I AM GOING TO WORK RIGHT NOW!"
     @answer = @partialanswer
   elsif @question == @question.upcase 
     @answer = "I can feel your motivation!" + " " + @partialanswer
   else
     @answer = @partialanswer
   end
 end

 def ask
 end
end
