require_relative '../lib/docking_station'

describe DockingStation do
    # it 'releases a bike' do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to{docking_station.release_bike}
    # end
    it { is_expected.to respond_to{docking_station.release_bike} }

    it "creates a new bike when the release bike method is called" do
        station = DockingStation.new
        expect{bike = station.release_bike}.not_to raise_error 
    end

end