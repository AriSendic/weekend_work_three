# Complete the method called mutation?, which will accept two strings as a parameter
# and return true if all the letters from the second string are contained within
# the first string, and false otherwise.

# Hi! Whoever is checking this, please tell me if there is a shorter way, 
#  and why did I need the the @'s.  THanks!
def mutation?(base_word, mutation)
  x = mutation.split('')
  x.each do |letter|
    if base_word.include?(letter)
      @answer = true
    else 
      @answer = false
      break
    end
  end  
  @answer
end

# Driver code - don't touch anything below this line.
puts "TESTING mutation?..."
puts

result = mutation?("burly", "ruby")

puts "Your method returned:"
puts result
puts

if result == true
  puts "PASS!"
else
  puts "F"
end

result = mutation?("burly", "python")

puts "Your method returned:"
puts result
puts

if result == false
  puts "PASS!"
else
  puts "F"
end