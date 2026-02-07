# Remove duplicate characters


def remove_duplicates(word)
  duplicates = Hash.new(0)
  word.each_char do |ch|
    duplicates[ch] += 1
  end
  return duplicates
end




print("Enter the word to find duplicate character : ")
word = gets.chomp
result = remove_duplicates(word)
print result  # {"v" => 1, "e" => 3, "r" => 2, "n" => 1, "d" => 1, "a" => 1}
puts
result.each do |key , value|
  if value == 1
    print key
  end
  
end

Output

Enter the word to find duplicate character : veerendra
vnda