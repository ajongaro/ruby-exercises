
class Dragon

  attr_accessor :name, :color, :rider, :ate

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @ate = 0
  end

  def hungry?
    return true unless @ate > 2
    false
  end

  def eat
    @ate += 1
  end


end
