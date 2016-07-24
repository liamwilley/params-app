class ParamsController < ApplicationController

  def guess
    @guess = params[:guess]
  end

  def show
    @name = params[:name]
    if @name.start_with?("A")
      @messages = "Yo, blood, you name starts with 'A'! "
    end
  end

  def guess
    @guess = params[:guess].to_s
    correct_guess = 21
    if @guess < correct_guess
      @message = "guess higher, you crack addicted bum!"
    elsif @guess > correct_guess
      @message = "guess lower, you stank right hoodrat"
    else
      @messge = "Winner winner chicken dinner"
    end
  end

  def counter
    @view_counter = params[:number].to_i + 1
  end

  def url_segement_parameters
    @message = params[:message]
  end

  def url_guessing_game
    @number = params[:number].to_i
    number_answer = 92
    if @number < number_answer
      @message = "Guess higher, clown!"
    elsif @number > number_answer
      @message = "Guess lower, fool!"
    else 
      @message = "Well done, get out of my head!" 
    end
  end

  def form_display_guessing_game
  end

  def form_result_guessing_game
    @number = params[:number].to_i
    number_answer = 92
    if @number < number_answer
      @message = "Guess higher, clown!"
    elsif @number > number_answer
      @message = "Guess lower, fool!"
    else 
      @message = "Well done, now get out of my head!" 
    end
  end
end

