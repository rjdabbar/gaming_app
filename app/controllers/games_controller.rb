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


end
