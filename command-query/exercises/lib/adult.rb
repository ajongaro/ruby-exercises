class Adult

  def initialize
    @sober = true
    @beverage_count = 0
  end

  def consume_an_alcoholic_beverage
    @beverage_count += 1
  end

  def sober?
    @beverage_count < 3
  end
  
end
