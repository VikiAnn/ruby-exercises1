class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @fullness = 0
  end

  def hungry?
    @fullness < 3
  end

  def eat
    @fullness += 1
  end

end
