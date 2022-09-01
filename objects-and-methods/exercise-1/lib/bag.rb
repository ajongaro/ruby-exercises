class Bag
  attr_accessor :count, :candies

  def initialize(candies=[])
    @empty = true
    @candies = candies
  end

  def count
    @candies.size
  end

  def empty?
    return true if @candies.count == 0
    false
  end

  def contains?(type)
    return true if @candies 
    false
  end

end
