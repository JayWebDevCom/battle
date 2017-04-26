require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(:player_1, :player_2) }


  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:get_hit_muthafucka)
      game.attack(player_2)
    end
  end
end
