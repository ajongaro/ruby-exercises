class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect

  def initialize(name, home='Beyond the Wall', size='Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    return nil if @home != stark.location
    if @starks_to_protect.count < 2
      @starks_to_protect << stark
      stark.safe = true
    end
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect.delete(stark)
    return stark
  end

  def hunts_white_walkers?
    return false if @starks_to_protect.count > 0
    true
  end

end


class Stark
  attr_accessor :name, :location, :house_words, :safe

  def initialize(name, location='Winterfell')
    @name = name
    @location = location
    @house_words = 'Winter is Coming'
    @safe = false
  end


  def safe?
    @safe
  end

end
