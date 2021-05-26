require 'pry'
require 'doctor'

describe Doctor do
  it 'Exists with attributes' do
    meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

    expect(meredith).to be_an_instance_of(Doctor)
    expect(meredith.name).to eq("Meredith Grey")
    expect(meredith.salary).to eq(100_000)
  end
end
