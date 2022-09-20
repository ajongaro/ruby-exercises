
class Unicorn
  attr_accessor :name, :color

  def initialize(name, color='silver')
    @name = name
    @color = color
  end

  def silver?
    return true if @color == 'silver'
    false
  end

  def say(x)
    "**;* " + x + " **;*"
  end
end
