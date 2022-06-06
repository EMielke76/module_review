class Inn
  attr_reader :name,
              :cost_per_night,
              :patrons

  def initialize(data)
    @name = data[:name]
    @cost_per_night = "$#{data[:cost_per_night].to_s.insert(-3, ".")}"
    @patrons = []
  end

  def rent_a_room(patron)
    @patrons << patron
  end

  def kick_out_the_deadbeat(patron)
    @patrons.delete(patron)
  end
end
