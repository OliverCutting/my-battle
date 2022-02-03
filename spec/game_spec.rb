require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'has a player 1' do
    expect(game.player1).to eq(player_1)
  end

  it 'has a player 2' do
    expect(game.player2).to eq(player_2)
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receives_damage)
      game.attack(player_2)
    end
  end
end