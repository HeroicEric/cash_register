require_relative '../test_helper'

describe Currency do
  let(:valid_amounts) { [3, 4.9, 3.50, 0.47, "3.50", "3"] }
  let(:invalid_amounts) { ['abc', '0.343', 0.4933] }

  describe ".format" do
    it "formats the amount to USD" do
      Currency.format(3).must_equal "$3.00"
    end
  end

  describe ".is_valid_amount?" do
    it "returns true when amount is valid" do
      valid_amounts.each do |amount|
        Currency.is_valid_amount?(amount).must_equal true
      end
    end

    it "returns false when amount is invalid" do
      invalid_amounts.each do |amount|
        Currency.is_valid_amount?(amount).must_equal false
      end
    end
  end
end
