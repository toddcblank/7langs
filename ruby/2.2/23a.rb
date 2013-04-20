numbers = []
(0..15).each {|a| numbers[a] = a}

numbers.each do
|a| 
print a, " "
puts if a%4 == 3
end
