class GamesController < ApplicationController

  def index
    @games = @games.all
  end

  def show
    @games = Game.find(params[:id])
  end

  def new
    @game = Game.new()
  end

  def create @game = Game.new(game_params)
    @game.user = current_user
    @game.save
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
  end

  # pas besoin de destroy un game je pense
  # def destroy
  # end

  private

  def game_params
    params.require(:game).permit(:title, :description, :rating, :tags, :photo)
  end

end
