require './lib/inn'
require './lib/citizen'

RSpec.describe Inn do
  before :each do
    @old_west = Inn.new({name: "The Old West Inn", cost_per_night: 150})

    @@mary = Citizen.new({name: "Mary Sue", age: 12})
    @joe = Citizen.new({name: "Joe Smith", age: 14})
    @alan = Citizen.new({name: "Alan Alda", age: 86})
  end

  it 'exists' do
    expect(@old_west).to be_a(Inn)
  end

  it 'has attributes' do

    expect(@old_west.name).to eq("The Old West Inn")
    expect(@old_west.cost_per_night).to eq("$1.50")
    expect(@old_west.patrons).to eq([])
  end

  xit 'can add patrons' do

    @old_west.rent_a_room(@mary)
    @old_west.rent_a_room(@joe)
    @old_west.rent_a_room(@alan)

    expect(@old_west.patrons).to eq([@mary, @joe, @alan])
  end

  xit 'can banish the broke' do

    @old_west.add_patron(@mary)
    @old_west.add_patron(@joe)
    @old_west.add_patron(@alan)

    @old_west.kick_out_the_deadbeat(@alan)

    expect(@old_west.patrons).to eq([@mary, @joe])
  end

  describe 'utlizing the module' do
    ## Create a module called 'Patronable'
    ## Unskip the tests below, one by one, and write methods in the Patronable module
    ## that pass the tests!
    ## unskip == remove the "x" before "it"

    xit 'can add patrons' do
      ### Uncomment out the line below and
      ### call your new method!

      #@old_west.<your_method_here>


      expect(@old_west.patrons).to eq([@mary, @joe, @alan])
    end

    xit 'can count the number of patrons' do
      ### Uncomment out the lines below
      ### add patrons with your previous method, then
      ### alter the expect line to achieve the desired result!
      ### NOTE: Don't simply do @old_west.patrons.count, create a new
      ### method that performs that functionality!

      #@old_west.<your_method_here>
      #@old_west.<your_method_here>
      #@old_west.<your_method_here>

      expect(@old_west).to eq(3)
    end

    xit 'can banish the broke' do
      ### Uncomment out the lines below and
      ### add patrons

      #@old_west.<your_method_here>
      #@old_west.<your_method_here>
      #@old_west.<your_method_here>

      ### Now, uncomment out and add the method
      ### to remove Alan Alda

      #@old_west.<your_method_here>

      expect(@old_west.patrons).to eq([@mary, @joe])
    end

    ## Once you've got these tests to pass, delete the
    ## old methods from the inn.rb file! Run your tests
    ## again, and watch the magic happen!
  end
end
