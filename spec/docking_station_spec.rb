require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }

    it "releases a working bike" do 
        subject.dock(Bike.new)
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it "docks bike" do
        expect(subject.dock(Bike.new)).to eq subject.bike
    end

    it "returns docked bike" do
        subject.dock(Bike.new)
        expect(subject.bike).to be_instance_of(Bike)
    end

    it "raises error when no bike" do
        expect {subject.release_bike}.to raise_error "No bike"
    end

    it "raises an error when dock occupied" do
        subject.dock(Bike.new)
        expect {subject.dock(Bike.new)}.to raise_error "Dock full"
    end

    it "Can dock up to 20 bikes" do
        20.times{ subject.dock(Bike.new) }
        expect { (subject.bike).length }.to eq(20)
    end

end