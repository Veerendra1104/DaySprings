
# Find frequency of each character
def frequency(st)
  freq = Hash.new(0)
  st.each_char do |ch|
    freq[ch] += 1
  end
  return freq
end


print("Enter the string to get the frequency  : ")
string = gets.chomp

result = frequency(string)
puts result

# Output 
Enter the string to get the frequency  : veerendra
{"v" => 1, "e" => 3, "r" => 2, "n" => 1, "d" => 1, "a" => 1}