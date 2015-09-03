class Currency

attr_reader :amount
attr_reader :code

  def initialize(amount, code)
    @amount = amount.to_i
    @code   = code.to_s
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

  # #   other_money.amount += @amount
  #   return result
  # end
  #
  #
  # def -(other_money)
  #   other_money.amount -= @amount
  #   return result
  # end

  #def *(amount)
  #  result.value
  #end

  def ==(other_money)
    other_money.amount == @amount && other_money.code == @code
  end

end

dollar       =  Currency.new(100.00, "USD")
joshmoney    =  Currency.new(100.00, "USD")

5.times do
  puts "Equals"
  puts joshmoney == dollar
end

5.times do
  puts "Addition"
  puts joshmoney.amount + dollar.amount
end

puts dollar.amount
puts dollar.code
5.times do
  puts "I have #{joshmoney.amount} JoshMoneys!"
end
