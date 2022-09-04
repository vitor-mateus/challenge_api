class Api::V1::PlayersController < ApplicationController


  def index
    @players = Player.all
    render json: @players
  end

  def show

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:player).permit(:name, :number, :birth_day, :birth_month, :birth_year)
  end
end
