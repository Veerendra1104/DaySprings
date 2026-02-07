# Find largest & smallest digit in given number 


def big_small_dig(num)
  digits = num.chars.map(&:to_i)
  big = digits[0]
  small = digits[0]
  digits.each do |n|
    if( n > big)
      big = n
    elsif( n < small)
      small = n
    end
  end

  return small, big 
 end


print("Enter the number to get the big and small digit : ")
num = gets.chomp

small, big = big_small_dig(num)
puts "The smalles digit in the number is : #{small} ."
puts "The largest digit in the number is : #{big} ."


Output
Enter the number to get the big and small digit : 852147
The smalles digit in the number is : 1 .
The largest digit in the number is : 8 .