class DifferentCurrencyCodeError < StandardError
end

class Currency

  attr_reader :amount, :code_symbol
  attr_reader :code
  codes_hash = {}

  def initialize(amount, code = "")
    codes_hash = {"$" => "USD",
                  "€" => "EUR",
                  "¥" => "YEN"}
    if code != ""
      @amount = amount
      @code = code
    else
      code_symbol = amount.gsub(/[^\D]/, "")
      code_symbol = code_symbol.gsub(/\./, "")
      # code_symbol[0..-1]
      #puts code_symbol
      # @code = code_symbol[0]
      # puts code_symbol
      @code = codes_hash[code_symbol].to_s
      @amount = amount.gsub(/[^\d\.]/, "").to_f
      puts @amount
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

dollar_check1 = Currency.new("¥12.22")
puts dollar_check1.code
puts dollar_check1.amount
# dollar_check2 = Currency.new(100 USD)
# dollar_check2 = (100 USD)
# euro_check1   = "€7.00"
# euro_check2   = (100 EUR)
dollar       =  Currency.new(1000.00, "USD")
joshmoney    =  Currency.new(100.00, "USD")
damemoney    =  Currency.new(100.00, "DMZ")
anthonymoney =  Currency.new(1000,   "USD")

sum = dollar + joshmoney
puts sum
puts sum.amount
puts sum.code

product = joshmoney * dollar.amount
puts product.amount
puts product
puts product.code
