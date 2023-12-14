numbers = [1, 2, 3, 4, 5, 6]

numbers.each do |i|
    puts "The #{i} number is: #{i}"
end

numbers.each {|i| puts "I get #{i} bucks"}