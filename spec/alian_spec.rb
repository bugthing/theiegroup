require 'spec_helper'

describe Alian do
  subject(:alian) { described_class.new }

  it 'starts at a random position' do
    expect(alian.position).to be_between(1, 10)
  end

  describe '#hit?' do
    subject { alian.hit? strike_point }

    before { alian.instance_variable_set(:@position, 10) }

    let(:strike_point) { 1 }

    it { is_expected.to be false }

    context 'when strike point at current position' do
      let(:strike_point) { 10 }

      it { is_expected.to be true }
    end
  end

  describe '#take_turn' do
    it 'moves left or right' do
      alian.instance_variable_set(:@position, 10)
      alian.take_turn
      expect([9, 11]).to include(alian.position)
    end

    context 'when at position 1' do
      it 'always moves right' do
        10.times do
          alian.instance_variable_set(:@position, 1)
          alian.take_turn
          expect(alian.position).to eq 2
        end
      end
    end
  end
end
