require './currency'

class CurrencyConverter

  def initialize (currency_rates = {})
    @currency_rates = {"USD" => 1.0,
                       "EUR" => 0.74}
  end

  def print_rates
    puts @currency_rates.to_s
  end

  def convert(input, code)
    @code = code
    @amount = input.amount
    if input.code == @code
      Currency.new(@amount, @code)
    else
      @code = code
      @amount = (input.amount*(1/@currency_rates[input.code]))
      Currency.new(@amount, @code)
    end
  end
end

new_converter = CurrencyConverter.new
euros_to_convert = Currency.new("€3.00")
puts "3 euros is #{new_converter.convert(euros_to_convert, "USD").amount} dollars"
