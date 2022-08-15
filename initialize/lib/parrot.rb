class Parrot

  attr_reader :name, :known_words, :sound

  def initialize(parrot_info)
    @name = parrot_info[:name]
    @sound = "Squawk!"
    @known_words = parrot_info[:known_words]
  end

end
