require 'spec_helper'

describe Spaceship do
  subject(:spaceship) { described_class.new }

  it 'can fire' do
    expect(spaceship).to respond_to :fire!
  end
end
