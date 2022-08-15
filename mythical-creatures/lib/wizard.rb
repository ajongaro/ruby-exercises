class Wizard
  attr_accessor :name, :casted, :bearded
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @casted = 0
  end

  def bearded?
    bearded
  end

  def incantation(s)
    'sudo ' + s
  end

  def rested?
    return true if casted < 3
    false
  end

  def cast
    casted += 1
    "MAGIC MISSILE!"
  end
end
