require_relative '../test_helper'

describe Item do
  describe "#initialize" do
    it "sets the price" do
      item = Item.new(3.75)
      item.price.must_equal 3.75
    end
  end

  describe "#display_price" do
    it "formats the price to USD" do
      item = Item.new(3)
      item.display_price.must_equal "$3.00"
    end
  end
end
