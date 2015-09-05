require './currency'

class CurrencyConverter

  def initialize (currency_rates = {})
    @currency_rates = {1.0   =>  "USD",
                      0.74   =>  "EUR"}
  end

  def print_rates
    puts @currency_rates.to_s
  end

  def convert(input, code)
    @code = code
    @amount = input.amount
    if input.code == @code
      Currency.new(@amount, @code)
    end
  end
end

x = CurrencyConverter.new()
dollar_to_convert = Currency.new("$3.00")
puts x.convert(dollar_to_convert, "USD") == dollar_to_convert ? "yesss!" : "noooooo"
puts x.print_rates
