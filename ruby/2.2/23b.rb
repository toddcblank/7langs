numbers = []
(0..15).each {|a| numbers[a] = a}
numbers.each_slice(4){|a| print a, "\n"}
