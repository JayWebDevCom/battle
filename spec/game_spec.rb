require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(:player_1, :player_2) }

  describe '#attack' do

    it 'damages the player' do
      expect(player_2).to receive(:get_hit)
      game.get_attacked(player_2)
    end

    it 'switches turns between players' do
      game.who_is_up
      expect(game.attacking_order).to eq [game.player_1, game.player_2]
      game.who_is_up
      expect(game.attacking_order).to eq [game.player_2, game.player_1]
    end

  end
end
