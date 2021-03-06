require 'spec_helper'

describe Spaceship do
  subject(:spaceship) { described_class.new }

  it 'starts with the nozzle at 0' do
    expect(spaceship.instance_variable_get(:@nozzle_angle)).to eq 0
  end

  it 'can have the nozzle angle set' do
    spaceship.nozzle_angle = 45
    expect(spaceship.instance_variable_get(:@nozzle_angle)).to eq 45
  end

  describe '#strike_point' do
    subject { spaceship.strike_point }

    before { spaceship.nozzle_angle = 45 }

    it { is_expected.to eq 145 }
  end
end
