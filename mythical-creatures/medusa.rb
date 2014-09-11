require_relative 'person'

class Medusa
  attr_reader :name, :stare, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.turns_to_stone
  end
end
