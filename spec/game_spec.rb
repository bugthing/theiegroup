require 'spec_helper'

describe Game do
  subject(:game) { described_class.new }

  it { is_expected.to respond_to :player }
  it { is_expected.to respond_to :alian }

  describe '#won?' do
    subject { game.won? }

    it 'is not won' do
      is_expected.to be false
    end

    context 'when the alian has been hit' do
      before { allow(game.alian).to receive(:hit?).and_return(true) }

      it { is_expected.to be true }
    end
  end

  describe '#initiate_turn' do
    it 'messages each participant to take turn' do
      expect(game.player).to receive(:take_turn).twice
      expect(game.alian).to receive(:take_turn).once
      game.initiate_turn!
      game.initiate_turn!
      game.initiate_turn!
    end
  end
end
