require_relative '../lib/bike'

describe Bike do
    it 'checks if bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq "yes"
    end
end