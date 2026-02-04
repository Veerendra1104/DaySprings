def evneOrOdd(n)
  if n % 2 == 0
    return "even"
  else
    return "Odd"
  end
end

print evneOrOdd(4)


# Count vowels and consonants
def VCCount(st)
  v_count = 0 
  c_count = 0 
  st.each_char do |ch|
    if(ch == 'a' || ch == 'i' || ch == 'o' || ch == 'u' || ch == 'e')
      v_count += 1
    else
      c_count += 1
    end

  end
  return v_count, c_count
end

puts VCCount("veerendra")


# Find duplicate characters
str = "programming"
char_cnt = Hash.new(0)

str.each_char do |ch|
  char_cnt[ch] += 1
end

duplicates = char_cnt.select{ |char, c| c > 1  }
print duplicates


# Remove duplicate characters
char_cnt = Hash.new(0)
str.each_char do |ch|
  char_cnt[ch] += 1 
end

char_cnt.each do |key, value|
  if  value == 1 
    print key
  end
end