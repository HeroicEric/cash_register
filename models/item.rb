class Item
  attr_reader :price

  def initialize(price)
    @price = price.to_f
  end

  def display_price
    Currency.format(@price)
  end
end
