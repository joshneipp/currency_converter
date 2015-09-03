class Currency

attr_reader :amount
attr_reader :code

  def initialize(amount, code)
    @amount = amount
    @code   = code
  end

  def + (other_money)
    other_money.amount += @amount
  end

  def - (other_money)
    other_money.amount -= @amount
  end

  def * (other_money)
    other_money.amount *= @amount
    return other_money.amount
  end

  def ==(other_money)
    other_money.amount == @amount && other_money.code == @code
  end

end

dollar       =  Currency.new(100.00, "USD")
joshmoney    =  Currency.new(100.00, "USD")
damemoney    =  Currency.new(100.00, "DMZ")
anthonymoney =  Currency.new(1000, "USD")

5.times do
  puts "Should be false"
  puts joshmoney == damemoney
  puts "Should be true"
  puts joshmoney != damemoney
end


5.times do
  puts "Equals"
  puts joshmoney.amount == dollar.amount
end

5.times do
  puts "Addition"
  puts joshmoney.amount + dollar.amount
end

5.times do
  puts "Multiply"
  puts joshmoney.amount * dollar.amount
end

puts dollar.amount
puts dollar.code
5.times do
  puts "I have #{joshmoney.amount} JoshMoneys!"
end
