require './lib/citizen'

RSpec.describe Citizen do
  before :each do
    @citizen = Citizen.new({name: "Joe Dirt", age: 33})
  end

  it 'exists' do
    expect(@citizen).to be_a(Citizen)
  end

  it 'has attributes' do
    expect(@citizen.name).to eq("Joe Dirt")
    expect(@citizen.age).to eq(33)
  end
end
