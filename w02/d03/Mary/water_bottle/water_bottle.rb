class WaterBottle
  def initialize
    @empty = true
  end

  def empty?
    return @empty
  end

  def fillit!
    @empty = false
  end

  def dispense1
    @empty = false
  end

  def dispense2
    @empty = false
  end

  def dispense3
    @empty = true
  end

  def can_dispense?
    false if @empty == true
  end

end
