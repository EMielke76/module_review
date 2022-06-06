class Sheriff
  attr_reader :name,
              :reputation

  def initialize(data)
    @name = data[:name]
    @reputation = data[:reputation]
  end

  def reach_for_the_sky
    puts "This town ain't big enough for the two of us."
  end

  def i_am_the_law
    puts "Draw!"
  end

  def i_could_be_your_huckleberry
    puts "I could bring you in warm, or I could bring you in cold."
  end

  def wanted_poster(criminal)
    
    criminal.wanted = true
  end
end
