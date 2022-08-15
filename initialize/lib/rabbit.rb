class Rabbit


  def initialize(rabbit_info)
    @name = rabbit_info[:name]
    @syllables = rabbit_info[:num_syllables]
  end

  def name
    return @name + " " + "Rabbit" if @syllables == 2
    @name
  end

end
