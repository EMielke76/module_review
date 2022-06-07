class GunSlinger
  attr_reader :name,
              :reputation

  attr_accessor :wanted

  def initialize(data)
    @name = data[:name]
    @reputation = data[:reputation]
    @wanted = nil
  end

  def the_man_in_black
    puts "This town ain't big enough for the two of us."
  end

  def it_aint_your_day
    puts "Draw"
  end

  def you_got_the_wrong_man
    if @wanted == true && @reputation == "Outlaw"
      puts  "You'll never catch me, lawman!"
    else
      puts "I ain't your man, Sheriff"
    end
  end
end
