require './lib/citizen'
require './lib/gun_slinger'
require './lib/saloon'
require './lib/inn'
require './lib/sheriff'

RSpec.describe Patronable do
  before :each do
  @old_west = Inn.new({name: "The Old West Inn", cost_per_night: 150})

  @last_drop = Saloon.new("The Last Drop")

  @citizen_1 = Citizen.new({name: "Mary Beth", age: 13})
  @citizen_2 = Citizen.new({name: "Mary Sue", age: 15})
  @citizen_3 = Citizen.new({name: "Ralph Moody", age: 18})
  @citizen_4 = Citizen.new({name: "Jimmithy Timmithy", age: 8})

  @gun_slinger_1 = GunSlinger.new({name: "John Hardin", occupation: "Outlaw", age: 35})
  @gun_slinger_2 = GunSlinger.new({name: "Doc Holliday", occupation: "Gambler", age: 38})
  @gun_slinger_3 = GunSlinger.new({name: "George Scarborough", occupation: "Cowboy", age: 42})
  @gun_slinger_4 = GunSlinger.new({name: "John Collins", occupation: "Outlaw", age: 29})
  @gun_slinger_5 = GunSlinger.new({name: "Ab Saunders", occupation: "Cowboy", age: 38})
  @gun_slinger_6 = GunSlinger.new({name: "Wyatt Earp", occupation: "Gambler", age: 40})

  @sheriff_1 = Sheriff.new({name: "Pat Garrett", occupation: "Local Lawman", age: 40 })
  @sheriff_2 = Sheriff.new({name: "Bill Tilgham", occupation: "US Marshal", age: 39})
  @sheriff_3 = Sheriff.new({name: "Heck Thomas", occupation: "US Marshal", age: 37 })
  @sheriff_4 = Sheriff.new({name: "Chris Madsen", occupation: "US Marshal", age: 42})
  @sheriff_5 = Sheriff.new({name: "Dave Allison", occupation: "Local Lawman", age: 36})
  @sheriff_6 = Sheriff.new({name: "Bat Masterson", occupation: "Local Lawman", age: 39})

  @last_drop.add_item(@last_drop.patrons, @citizen_1)
  @last_drop.add_item(@last_drop.patrons, @citizen_2)
  @last_drop.add_item(@last_drop.patrons, @gun_slinger_1)
  @last_drop.add_item(@last_drop.patrons, @gun_slinger_3)
  @last_drop.add_item(@last_drop.patrons, @gun_slinger_4)
  @last_drop.add_item(@last_drop.patrons, @sheriff_1)
  @last_drop.add_item(@last_drop.patrons, @sheriff_3)
  @last_drop.add_item(@last_drop.patrons, @sheriff_4)

  @old_west.add_item(@old_west.patrons, @citizen_3)
  @old_west.add_item(@old_west.patrons, @citizen_4)
  @old_west.add_item(@old_west.patrons, @gun_slinger_2)
  @old_west.add_item(@old_west.patrons, @gun_slinger_5)
  @old_west.add_item(@old_west.patrons, @gun_slinger_6)
  @old_west.add_item(@old_west.patrons, @sheriff_2)
  @old_west.add_item(@old_west.patrons, @sheriff_5)
  @old_west.add_item(@old_west.patrons, @sheriff_6)
  end

  it 'returns the average age of patrons at both establishments' do

    expect(@old_west.average_age).to eq(32)
    expect(@last_drop.average_age).to eq(31)
  end

  it 'returns a patron when given a name' do

    expect(@old_west.find_by_name("Bill Tilgham")).to eq([@sherrif_2])
    expect(@last_drop.find_by_name("Bill Tilgham")).to eq("No Bill Tilgham's Here!")
  end

  it 'returns all patrons of a given occupation' do

    expect(@old_west.find_by_occupation("Gambler")).to eq([@gun_slinger_2, @gun_slinger_6])
    expect(@last_drop.find_by_occupation("Gambler")).to eq("No Gambler's Here!")
  end
end
