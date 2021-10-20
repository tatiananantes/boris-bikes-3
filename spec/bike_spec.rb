require 'bike'

describe Bike do
    it 'checks if bike is working' do
    bike = Bike.new
    expect(bike.is_working?).to eq "yes"
    end
end