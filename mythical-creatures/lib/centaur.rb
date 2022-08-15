class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :stamina, :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @sick = false
    @stamina = 3 # max stamina
  end

  def shoot
    return 'NO!' if @stamina < 1 || @laying
    @stamina -= 1
    'Twang!!!'
  end

  def run
    return 'NO!' if @stamina < 1 || @laying
    @stamina -= 1
    'Clop clop clop clop!'
  end

  def sleep
    return 'NO!' if @standing
    @stamina = 3
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    return 'NO!' if not @standing
    return @sick = true if @stamina == 3
    @stamina = 3
  end

  def cranky?
    return true if @stamina < 1
    @cranky = false
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sick?
    @sick
  end



end
