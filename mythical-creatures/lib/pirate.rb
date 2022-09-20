
class Pirate
  attr_accessor :name, :job, :heinous_acts, :ships_robbed

  def initialize(name, job='Scallywag')
    @name = name
    @job = job
    @loot = 0
    @heinous_acts = 0
    @ships_robbed = 0
  end

  def cursed?
    return false if @heinous_acts < 3
    true
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def booty
    @loot
  end

  def pillage
    @ships_robbed += 1
    @loot += 100
  end

  def rich?
    return false if @loot < 500
    true
  end
end
