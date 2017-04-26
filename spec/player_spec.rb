require 'player'
describe Player do

  let(:player) { described_class.new('Ygritte') }

  it "returns its name" do
    expect(player.name).to eq 'Ygritte'
  end

end
