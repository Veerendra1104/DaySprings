# 1. Reverse a string 
def reverse(str)
  rev = ""
  str.each_char do |ch|
    rev = ch  + rev
  end
  return rev
end

s = "amma"

# puts reverse(s)

# 2. Check given string is palindorme 
def  palindrome?(st)
  if st==reverse(st)
    return true
  else
    return false
  end
end

puts palindrome?(s)

# 3. Find the factorial
def factorial(n)
  fact = 1
  i = 1
  n.times do
    fact = fact * i
    i = i + 1
  end
  return fact 
end

puts factorial(5)