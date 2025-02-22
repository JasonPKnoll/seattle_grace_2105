require 'rspec'
require 'doctor'
require 'hospital'
require 'network'

describe Network do
  it 'Exists and has attributes' do
    gsmn = Network.new("Greater Seattle Medical Network")
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
    miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
    derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
    grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [miranda, derek])
  end

  it "Can add hospitals" do
    gsmn = Network.new("Greater Seattle Medical Network")
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
    miranda = Doctor.new({name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", salary: 150_000})
    derek = Doctor.new({name: "Derek Sheperd", specialty: "Neurosurgery", education: "University of Pennsylvania", salary: 125_000})
    grey_sloan = Hospital.new("Grey Sloan Memorial", "Larry Maxwell", [miranda, derek])
    gsmn.add_hospital(seattle_grace)
    gsmn.add_hospital(grey_sloan)

    expect(gsmn.hospitals).to eq([seattle_grace, grey_sloan])
  end
end
