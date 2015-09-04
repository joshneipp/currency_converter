# puts "Type a currency and amount: "
# user_input = gets.chomp
#
# def isolate_symbols(user_input)
#   user_input = gets.chomp
#   return user_input
# end
# isolate_symbols
#
# var = user_input
# puts

# def user_input
#   puts "Number please: "
#   gets.chomp
#   return gets.chomp
# end
#
# def isolate_symbols
#   no_digits = user_input.gsub(/[^\D]/, "")
#   no_digits_no_punctuation = no_digits.delete ",."
# end
#
# puts no_digits

def isolate_symbols
  puts "Number please: "
  x = gets.chomp
  no_digits = x.gsub(/[^\D]/, "")
  no_digits_no_punctuation = no_digits.delete ",."
  puts no_digits_no_punctuation
end

isolate_symbols
# puts "gimme dollarz: "
# input = gets.chomp
# no_digits = input.gsub(/[^\D]/, "")
# no_digits_no_punctuation = no_digits.delete ",."
# puts no_digits_no_punctuation
