class GamesController < ApplicationController
 

  def index
    @games = ["Secret Number"]
  end

  def secret_number

  end

  def secret_number_play
    @secret_number = rand(1..5)
    @guess = params[:guess].to_i
    if @secret_number == @guess
      render 'win'
    else
      render 'lose'
    end

  end

  def rock_paper_scissors
  end

  def rock_paper_scissors_play

    rps = {"rock" => "paper", "paper" => "scissors", "scissors" => "rock"}
    @app_throw = ["rock", "paper", "scissors"].sample
    @user_throw = params[:throw]
    @user_loses_to = rps[@user_throw]

    if @app_throw == @user_throw
      @status = "Tie"
    elsif @app_throw == @user_loses_to
      @status = "You Lost"
    else
      @status ="You win"
    end

      

    # if @app_throw == @user_throw
    #   @status = "You tied!"
    # elsif (@app_throw == "rock" && @user_throw == "paper") || (@app_throw == "paper" && @user_throw == "scissors") || (@app_throw == "scissors" && @user_throw == "rock")
      
    #   @status = "You Win"
    #   else
    #     @status = "You Lost"
    # end
  end



end
