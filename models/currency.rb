class Currency
  class << self
    def format(amount)
      "$#{sprintf("%#.2f", amount)}"
    end

    def is_valid_amount?(amount)
      pattern = /\A\d+(\.\d{1,2})?\z/
      !amount.to_s.match(pattern).nil?
    end
  end
end
