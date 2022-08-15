class Ogre
  attr_accessor :name, :home, :swings

  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(target)
    target.encounter_counter += 1

    if target.encounter_counter % 3 == 0
      target.notice = true
      @swings += 1
    end
    target.knocked = true if @swings % 6 == 0
  end

  def swing_at(target)
    @swings += 1
  end

  def apologize(target)
    target.knocked = false
  end
end

class Human
  attr_accessor :name, :encounter_counter, :notice, :knocked

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @notice = false
    @knocked = false
  end

  def notices_ogre?
    @notice
  end

  def knocked_out?
    @knocked

  end
end
