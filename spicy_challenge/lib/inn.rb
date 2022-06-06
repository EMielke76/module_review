require_relative 'patronable'

class Inn
  include Patronable
  
  attr_reader :name,
              :patrons

  def initialize(name)
    @name = name
    @patrons = []
  end
end
