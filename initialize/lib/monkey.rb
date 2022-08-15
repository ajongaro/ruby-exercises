class Monkey

  attr_reader :name, :type, :favorite_food
  
  def initialize(monkey_info)
    @name = monkey_info[0]
    @type = monkey_info[1]
    @favorite_food = monkey_info[2]
  end

end
