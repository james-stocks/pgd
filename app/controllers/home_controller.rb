class HomeController < ApplicationController
  def index
    @latest_updated_games = Game.order(updated_at: :desc).limit(5)
  end
end
