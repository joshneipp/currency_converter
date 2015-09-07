require './currency'
require './currency_converter'

new_converter = CurrencyConverter.new
input = Currency.new(47, "NZD")
x = new_converter.convert(input, "ZAR")
#puts x.code
#puts "Input amount is #{input.amount} #{input.code}"
#puts "Convert this to #{x.code}"
#puts "Exchange rate is #{@currency_rates[input.code]}"
puts "#{input.amount} #{input.code} is #{x.amount} #{x.code}"
#print "#{money_to_convert.amount} #{money_to_convert.code} is
       #{new_converter.convert(money_to_convert, "USD").amount}
       #{new_converter.convert(money_to_convert, "USD").code}"
