require_relative 'player'

class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
  end

  def attack(player)
    player.receives_damage 
    change_turn
  end

  def change_turn
    @current_turn == @player1 ? @current_turn = @player2 : @current_turn = @player1
  end

  def opposite_player
    @current_turn == @player1 ? @player2 : @player1
  end
end