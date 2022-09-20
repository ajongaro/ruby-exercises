
class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    statues << victim

    if statues.count > 3
      victim.unstone(statues)
    end
  end
end

class Person
  attr_accessor :name, :stoned, :unstone

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def unstone(old_victim)
    old_victim.first.stoned = false
    old_victim.shift
  end
end


















































# class Medusa
#   attr_accessor :name, :statues
#
#   def initialize(name)
#     @name = name
#     @statues = []
#   end
#
#   def stare(victim)
#     victim.stoned = true
#
#     if statues.count < 3
#       statues << victim
#     else
#       statues[0].stoned = false
#       statues.delete_at(0)
#       statues << victim
#     end
#
#   end
#
#
# end
#
#
#
#
# class Person
#   attr_accessor :name, :stoned
#
#   def initialize(name)
#     @name = name
#     @stoned = false
#   end
#
#   def stoned?
#     stoned
#   end
#
# end
