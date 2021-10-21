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

  it "docks a bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station).to respond_to(:dock).with(1).argument
    expect(docking_station.dock(bike)).to eq bike
  end

  it "checks if docking station has a bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:bike)
  end

  it 'returns docked bikes' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bike).to eq bike
  end

end