require './currency'

class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter

  def initialize (currency_rates = {})
    @currency_rates =  {"AUD" => 1.44686,
                        "CAD" => 1.32795,
                        "EUR" => 0.89686,
                        "GBP" => 0.65948,
                        "INR" => 66.6865,
                        "JPY" => 118.958,
                        "NZD" => 1.59086,
                        "USD" => 1.00000,
                        "ZAR" => 13.8607
                       }
  end

  def print_rates
    puts @currency_rates.to_s
  end

  def convert(input, code)
    # @code = code
    # @amount = input.amount
    unless @currency_rates.has_key?(input.code) && @currency_rates.has_key?(code)
      raise UnknownCurrencyCodeError
    end
    if input.code == code
      @code = input.code
      @amount = input.amount
      Currency.new(@amount, @code)
    else
      puts "Input amount is #{input.amount} #{input.code}"
      puts "Convert this to #{code}"
      puts "Exchange rate is #{@currency_rates[input.code]}"
      #@code = code
      #puts @code
      @amount = (input.amount * (@currency_rates[code])/(@currency_rates[input.code]))
      puts @amount, @code
      Currency.new(@amount, @code)
    end
  end
end

new_converter = CurrencyConverter.new
input = Currency.new(1190, "JPY")
x = new_converter.convert(input, "GBP")
puts x.amount, x.code
#puts "#{input.amount} #{input.code} is #{x.amount} #{x.code}"
#print "#{money_to_convert.amount} #{money_to_convert.code} is
       #{new_converter.convert(money_to_convert, "USD").amount}
       #{new_converter.convert(money_to_convert, "USD").code}"
