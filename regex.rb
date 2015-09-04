

# def get_symbol(x)
# puts "dollarz: "
# while
# input = gets.chomp
#
# no_digits = input.gsub(/[^\D]/, "")
# no_puncs = no_digits.delete ",."
# # result = currency.gsub(/[^\D]/, "")
# # result = result.delete ",."
# puts "#{no_puncs}"



  puts "gimme dollarz: "
  input = gets.chomp
  no_digits_no_punctuation = input.delete ",.[^\D]/,"
  #no_digits = input.gsub(/[^\D]/, "")
  #no_digits_no_puncs = no_digits.delete ",.[^\D]/,"
  puts no_digits_no_punctuation

#better: do the inverse of
#putting out only the digits
