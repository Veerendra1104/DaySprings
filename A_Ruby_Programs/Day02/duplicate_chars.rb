# Find duplicate characters


def duplicate_chars(st)
  duplicates = Hash.new(0)
  st.each_char do |ch|
    duplicates[ch] += 1
  end
  return duplicates
end



print("Enter the word to find duplicate character : ")
word = gets.chomp

result = duplicate_chars(word)
result.each do |key, value|
  if value > 1
    print key + " "
  end
end

Output
Enter the word to find duplicate character : veerendra
e r 