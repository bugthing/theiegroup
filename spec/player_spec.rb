require 'spec_helper'

describe Player do
  subject(:player) { described_class.new }

  it 'starts a position 0' do
    expect(player.position).to eq 0
  end

  it 'has a space ship' do
    expect(player.spaceship).to be_an Object
  end
end
