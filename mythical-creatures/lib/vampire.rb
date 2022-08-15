
class Vampire
  attr_accessor :name, :pet, :thirsty

  def initialize(name, pet_name='bat', thirst=true)
    @name = name
    @pet  = pet_name
    @thirsty = thirst
  end

  def drink
    @thirsty = false
  end

end
