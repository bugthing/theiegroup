require 'spec_helper'

describe Trajectory do
  subject(:trajectory) { described_class.new angle: angle, velocity: velocity, gravity: gravity }

  let(:angle) { 0 }
  let(:velocity) { 40 }
  let(:gravity) { 9.81 }

  describe '#distance' do
    subject { trajectory.distance }

    { 45 => 145.80985339050892,
      1 => 148.30539071570752,
      90 => -130.66709655189894,
      0  => 0.0 }.each_pair do |angle, distance|

      context "when the nozzle angle is #{angle}" do
        let(:angle) { angle }
        it { is_expected.to eq distance }
      end
    end
  end
end
