class Narwhal

  attr_reader :name, :weight
  def initialize(narwhal_info)
    @name = narwhal_info[:name]
    @weight = narwhal_info[:weight]
    @cute = narwhal_info[:cute]
  end

  def cute?
    @cute
  end

end
