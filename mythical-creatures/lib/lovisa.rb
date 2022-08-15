# this does not work



class Lovisa
  attr_accessor :title, :characteristics

  def initialize(title, characteristics)
    @title = title
    @characteristics ||= ['brilliant']

  end

  def brilliant?
    true
  end

  def kind?
    true
  end

  def say(to_sparkle)
    "**;* " + to_sparkle + " **;*"
  end
end
