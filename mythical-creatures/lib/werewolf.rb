class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry

  def initialize(name, location=nil)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if @wolf == true
      victim.status = :dead
      @hungry = false
    else
      victim.status = :alive
    end
  end


  def change!
    if human == true
      self.human = false
      self.wolf = true
      self.hungry = true
    else
      self.human = true
      self.wolf = false
      self.hungry = false
    end
  end

end
