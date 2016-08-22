require 'spec_helper'

describe Player do
  subject(:player) { described_class.new }

  it 'starts a position 0' do
    expect(player.position).to eq 0
  end

  it 'has a space ship' do
    expect(player.spaceship).to be_an Object
  end

  describe '#take_turn' do
    subject { player.take_turn }

    before { allow(STDIN).to receive(:gets).and_return("45\n") }

    it 'asks for the firing angel' do
      expect { subject }.to output("Firing Angle?\n").to_stdout
    end

    it 'sets the spaceship nozzle angle' do
      expect(player.spaceship).to receive(:nozzle_angle=).with(45)
      expect { subject }.to output.to_stdout
    end
  end
end
