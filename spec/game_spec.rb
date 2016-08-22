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
  end
end
