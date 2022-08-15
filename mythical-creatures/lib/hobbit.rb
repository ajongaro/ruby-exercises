
class Hobbit

  attr_accessor :name, :disposition, :age

  def initialize(name, disposition='homebody')
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return false unless @age > 32
    true
  end

  def old?
    return false unless @age > 100
    true
  end

  def has_ring?
    return false unless @name == 'Frodo'
    true
  end

  def is_short?
    return true
  end


end
