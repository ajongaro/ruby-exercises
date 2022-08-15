class Catalog
  attr_accessor :book, :cheapest

  def initialize
    @book = []
  end

  def cheapest
    return nil if @book == []
    @book.sort_by { |x| x.price }.first.name
    # sort book array by cheapest item and return it
  end

end
