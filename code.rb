

require './currency'
require './currency_converter'
#Uncomment below for Hard Mode
# require './currency_trader'

new_converter = CurrencyConverter.new
input = Currency.new(47, "NZD")
x = new_converter.convert(input, "ZAR")

#puts "Input amount is #{input.amount} #{input.code}"
#puts "Convert this to #{x.code}"
#puts "Exchange rate is #{@currency_rates[input.code]}"
puts "#{input.amount} #{input.code} is #{x.amount} #{x.code}"
#print "#{money_to_convert.amount} #{money_to_convert.code} is
       #{new_converter.convert(money_to_convert, "USD").amount}
       #{new_converter.convert(money_to_convert, "USD").code}"



#Hard Mode
#Hard Mode
#Hard Mode
#Hard Mode
# new_trader = CurrencyTrader.new
# input = (@cc_begin, @cc_end, (1000000, "USD"))
# #puts @cc_best
