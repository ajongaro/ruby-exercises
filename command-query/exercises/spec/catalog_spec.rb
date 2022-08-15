require 'rspec'
require_relative '../lib/product'
require_relative '../lib/catalog'

RSpec.describe Catalog do
  it 'starts with no products' do
    catalog = Catalog.new
    expect(catalog.cheapest).to be_nil
  end

  it 'has a cheapest of one' do
    catalog = Catalog.new
    catalog.book << Product.new('scissors', 8)
    expect(catalog.cheapest).to eq('scissors')
  end

  it 'has a cheapest product' do
    catalog = Catalog.new
    catalog.book << Product.new('cupcake', 3)
    catalog.book << Product.new('shirt', 23)
    catalog.book << Product.new('button', 7)
    catalog.book << Product.new('button', 69)
    catalog.book << Product.new('button', 420)
    catalog.book << Product.new('button', 1)
    catalog.book << Product.new('button', 2)
    catalog.book << Product.new('button', 9)
    expect(catalog.cheapest).to eq('button')
    # catalog.book.each{ |x| print "#{x.name} for #{x.price}\n" }
  end
end
