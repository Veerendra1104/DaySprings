# Count words in a sentence

def words_count(st)
  count = 0  
  st.split do |word|
    count += 1
  end
  return count 
end

print("Enter the sentance to count : ")
sentance = gets.chomp

words_count_of_sentance = words_count(sentance)
print(words_count_of_sentance)

Output
Ruby is a programming language
5