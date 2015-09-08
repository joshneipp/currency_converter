class DifferentCurrencyCodeError < StandardError
end

class Currency

  attr_reader :amount, :code_symbol, :code
  codes_hash = {}

  def initialize(amount, code = "")
    codes_hash = {"$" => "USD",
                  "€" => "EUR",
                  "¥" => "JPY"}
    if code != ""
      @amount = amount
      @code = code
    else
      code_symbol = amount.gsub(/[^\D]/, "")
      code_symbol = code_symbol.gsub(/\./, "")
      @code = codes_hash[code_symbol].to_s
      @amount = amount.gsub(/[^\d\.]/, "").to_f
    end
  end

  def + (other_money)
    if @code != other_money.code
      raise DifferentCurrencyCodeError
    end
    Currency.new(@amount + other_money.amount, @code)
  end

  def - (other_money)
    if @code != other_money.code
      raise DifferentCurrencyCodeError
    end
    Currency.new(@amount - other_money.amount, @code)
  end

  def * (value)
    Currency.new(@amount * value, @code)
  end

  def ==(other_money)
    other_money.amount == @amount && other_money.code == @code
  end
end

#The following variable can be used to test functionality of initialize.
currency_check = Currency.new("¥12.22")

#The following variables can be used to test functionality of the
#mathematical operator methods defined above
dollar       =  Currency.new(1000.00, "USD")
joshmoney    =  Currency.new(1000.00, "USD")
damemoney    =  Currency.new(100.00, "DMZ")
