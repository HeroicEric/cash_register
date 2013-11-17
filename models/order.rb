class Order
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def total
    @items.inject(0) { |sum, item| sum + item.price }
  end

  def display_items
    puts "Here are your item prices:"

    @items.each do |item|
      puts item.display_price
    end
  end

  def display_total
    puts "The total amount due is #{Currency.format(total)}"
  end
end
