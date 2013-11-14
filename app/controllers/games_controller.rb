class GamesController < ApplicationController
  def index
  end

  def debug
    @not_special = params["not_special"]
  end

end
