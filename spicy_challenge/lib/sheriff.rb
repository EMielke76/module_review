class Sheriff
  attr_reader :name,
              :occupation,
              :age

  def initialize(data)
    @name = data[:name]
    @occupation = data[:occupation]
    @age = data[:age]
  end

  def i_could_be_your_huckleberry
    puts "I could bring you in warm, or I could bring you in cold."
  end

  def wanted_poster(criminal)

    criminal.wanted = true
  end
end
