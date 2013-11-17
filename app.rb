require_relative 'models/currency'
require_relative 'models/item'
require_relative 'models/order'

order = Order.new

loop do
  puts "What is the sale price?"
  price = gets.chomp

  break if price == 'done'

  if Currency.is_valid_amount?(price)
    item = Item.new(price)
    order.add_item(item)
  else
    puts "Given price was invalid"
  end
end

order.display_items
order.display_total
