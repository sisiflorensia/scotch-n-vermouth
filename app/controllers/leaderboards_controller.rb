class LeaderboardsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @game = Game.find(params[:game_id])
    @leaderboard = Leaderboard.new(leaderboard_params)
    @leaderboard.game = @game
    if @leaderboard.save
      redirect_to game_path(@game)
    else
      render 'games/show'
    end
  end

  def top_10
    @game = Game.find(params[:game_id])
    # return top 10 player's scores for that particular game
  end

  private

  def leaderboard_params
    params.require(:leaderboard).permit(:your_name, :score)
  end
end
