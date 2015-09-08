require './currency'
require './currency_converter'
# require './currency_trader'  #uncomment for 'Hard Mode'

new_converter = CurrencyConverter.new
input = Currency.new(47, "GBP") #change amount or code manually here
x = new_converter.convert(input, "ZAR") #change code manually here

puts "#{input.amount} #{input.code} is #{x.amount} #{x.code}"
