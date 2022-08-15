class Lion


  attr_reader :name, :sound

  def initialize(lion_info)
    @name = lion_info[:name]
    @sound = lion_info[:sound]
  end

end
