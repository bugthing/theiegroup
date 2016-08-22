require 'spec_helper'

describe Alian do
  subject(:alian) { described_class.new }

  it 'has a space ship' do
    expect(alian.spaceship).to be_an Object
  end
end
