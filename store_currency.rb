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
      # puts code_symbol
      # @code = code_symbol[0]
      puts code_symbol
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

#dollar_check1 = Currency.new("$1.20")
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

# puts sum.amount
# puts sum.code

#
# def isolate_symbols
#   puts "Number please: "
#   x = gets.chomp
#   no_digits = x.gsub(/[^\D]/, "")
#   no_digits_no_punctuation = no_digits.delete ",."
#   no_symbols = x.gsub(/[^\d\.]/, "").to_f
#   #without_symbol = no_symbol.to_f
#   puts "Currency symbol is #{no_digits_no_punctuation}"
#   puts "Currency amount is #{no_symbol}"
#   # sum = without_symbol += without_symbol
#   # puts "#{sum}"
# end
#
#
#
# isolate_symbols
#
# 3.times do
#   puts "Subtraction"
#   puts joshmoney.amount - damemoney.amount
# end
#
# #
# 2.times do
#   puts "gimme dollrz: "
#   input = gets.chomp
#   no_digits = input.gsub(/[^\D]/, "")
#   no_digits_no_punctuation = no_digits.delete ",."
#   puts no_digits_no_punctuation
# end

#Sanity checks
# 3.times do
#   puts "Should be false"
#   puts joshmoney == damemoney
#   puts "Should be true"
#   puts joshmoney != damemoney
# end
#
# 3.times do
#   puts "Equals"
#   puts joshmoney.amount == dollar.amount
# end
#
# 3.times do
#   puts "Addition"
#   puts joshmoney.amount + dollar.amount
# end
#
# 3.times do
#   puts "Subtraction"
#   puts joshmoney.amount - dollar.amount
# end
#
# 3.times do
#   puts "Multiply"
#   puts joshmoney.amount * dollar.amount
# end
#
# puts dollar.amount
# puts dollar.code
# 3.times do
#   puts "I have #{joshmoney.amount} JoshMoneys!"
# end
