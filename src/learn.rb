numbers = [[1, 2, 3],[4, 5, 6]]

numbers.each do |i|
    puts "The #{i} number is: #{i}"
end

numbers.each {|i| puts "I get #{i} bucks"}

day = 15
(0..day - 1).each do |j|
    puts "Yesterday more was #{j} day of the months"
end