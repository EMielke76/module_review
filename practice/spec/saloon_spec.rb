require './lib/saloon'
require './lib/citizen'

RSpec.describe Saloon do
  before :each do
    @last_drop = Saloon.new("The Last Drop")

    @@mary = Citizen.new({name: "Mary Sue", age: 12})
    @joe = Citizen.new({name: "Joe Smith", age: 14})
    @alan = Citizen.new({name: "Alan Alda", age: 86})
  end

  it 'exists' do
    expect(@last_drop).to be_a(Saloon)
  end

  it 'has attributes' do

    expect(@last_drop.name).to eq("The Last Drop")
    expect(@last_drop.patrons).to eq([])
  end

  xit 'can add patrons' do

    @last_drop.add_patron(@mary)
    @last_drop.add_patron(@joe)
    @last_drop.add_patron(@alan)

    expect(@last_drop.patrons).to eq([@mary, @joe, @alan])
  end

  xit 'can kick out the drunk' do

    @last_drop.add_patron(@mary)
    @last_drop.add_patron(@joe)
    @last_drop.add_patron(@alan)

    @last_drop.kick_out_the_drunk(@alan)

    expect(@last_drop.patrons).to eq([@mary, @joe])
  end

  describe 'utlizing the module' do
    ## Utlizie your 'Patronable' module to achieve the desired results!
    ## As before, unskip the tests one by one
    ## unskip == remove the "x" before "it"

    xit 'can add patrons' do
      ### Uncomment out the line below and
      ### call your new method!

      #@last_drop.<your_method_here>


      expect(@last_drop.patrons).to eq([@mary, @joe, @alan])
    end

    xit 'can count the number of patrons' do
      ### Uncomment out the lines below
      ### add patrons with your previous method, then
      ### alter the expect line to achieve the desired result!
      ### NOTE: Don't simply do @last_drop.patrons.count, utilize the
      ### method you have defined on the 'Patronable' module!

      #@last_drop.<your_method_here>

      expect(@last_drop).to eq(3)
    end

    xit 'can kick out the drunk' do
      ### Uncomment out the lines below and
      ### add patrons

      #@last_drop.<your_method_here>
      #@last_drop.<your_method_here>
      #@last_drop.<your_method_here>

      ### Now, uncomment out and add the method
      ### to remove Alan Alda

      #@last_drop.<your_method_here>

      expect(@last_drop.patrons).to eq([@mary, @joe])
    end
  end
end
