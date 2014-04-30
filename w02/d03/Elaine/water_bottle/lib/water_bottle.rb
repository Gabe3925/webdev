class WaterBottle

  def initialize
    @empty = 0
  end

  def empty?
    return @empty
  end

  def fill!
    @empty = 3
    return "Filled!"
  end

  def dispense!
    if empty? == 0
      return "There is no water in here."
    else
      @empty -= 1
    end
  end

end
