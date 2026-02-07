# Check if two strings are anagrams

string_1 = "java"

string_2 = "avja"

def anagram(str1, str2)
  arr1 = str1.chars
  arr2 = str2.chars

 arr1 =  arr1.sort
 arr2  =   arr2.sort

 print arr1
 puts 
 print arr2
 puts
  return arr1==arr2
end

puts anagram(string_1, string_2)

# Output 
 ruby .\Anagram.rb
["a", "a", "j", "v"]
["a", "a", "j", "v"]
true