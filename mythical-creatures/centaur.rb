class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @crankiness = 0
    @standing = true
  end

  def shoot
    if cranky? || laying?
      "NO!"
    else
      @crankiness += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      "NO!"
    else
      @crankiness += 1
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    standing? ? "NO!" : @crankiness = 0
  end

  def cranky?
    @crankiness > 2
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end
end
