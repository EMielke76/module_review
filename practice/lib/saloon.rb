class Saloon
  attr_reader :name,
              :patrons,
              :beverages_offered

  def initialize(name)
    @name = name
    @patrons = []
    @beverages_offered = []
  end

  def add_patrons(patron)
    @patrons << patron
  end

  def kick_out_the_drunk(patron)
    @patrons.delete(patron)
  end
end
