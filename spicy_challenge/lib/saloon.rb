require_relative 'patronable'

class Saloon
  include Patronable

  attr_reader :name,
              :patrons
  def initialize(name)
    @name = name
    @patrons = []
  end
end
