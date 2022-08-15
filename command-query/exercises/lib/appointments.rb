
class Appointments


  def initialize
    @slots = []
  end

  def earliest
    @slots.sort.first
  end


  def at(time_slot)
    @slots << time_slot
  end
end
