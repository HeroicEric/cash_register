require_relative 'test_helper'

describe Order do
  it "has Items" do
    order = Order.new
    order.must_respond_to :items
  end

  describe "#add_item" do
    it "adds an item" do
      order = Order.new
      item = Item.new(3.75)
      order.add_item(item)
      order.items.must_include item
    end
  end

  describe "#display_items" do
    it "lists all item prices in the console" do
      order = Order.new
      item1 = Item.new(3.75)
      item2 = Item.new(8.35)
      order.add_item(item1)
      order.add_item(item2)

      output = "Here are your item prices:\n" +
               "$3.75\n" +
               "$8.35\n"

      proc { order.display_items }.must_output output
    end
  end

  describe "#total" do
    it "returns the sum of all item prices" do
      order = Order.new
      item1 = Item.new(3.75)
      item2 = Item.new(8.25)
      order.add_item(item1)
      order.add_item(item2)

      order.total.must_equal 12.0
    end
  end

  describe "#display_total" do
    it "displays the formatted total to the user" do
      order = Order.new
      item1 = Item.new(3.75)
      item2 = Item.new(8.25)
      order.add_item(item1)
      order.add_item(item2)

      output = "The total amount due is $12.00\n"
      lambda { order.display_total}.must_output output
    end
  end
end
