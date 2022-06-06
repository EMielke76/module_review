class Citizen
  attr_reader :name,
              :age

  def initialize(data)
    @name = data[:name]
    @age = data[:age]
  end
end
