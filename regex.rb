# def isolate_symbols
#   puts "Number please: "
#   x = gets.chomp
#   no_digits = x.gsub(/[^\D]/, "")
#   no_digits_no_punctuation = no_digits.delete ",."
#   puts no_digits_no_punctuation
# end

#isolate_symbols

array = ["USD",
         "EUR",
         "JPY",
        ]

puts "Gimme code!"
example = gets.chomp
happy_answer = "yes"
sad_answer = "nope!"
array.any?{ |i| i[example] } ? answer = happy_answer : answer = sad_answer
puts answer


# puts "gimme dollarz: "
# input = gets.chomp
# no_digits = input.gsub(/[^\D]/, "")
# no_digits_no_punctuation = no_digits.delete ",."
# puts no_digits_no_punctuation
