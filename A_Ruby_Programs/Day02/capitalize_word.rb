# Capitalize first letter of each word

print("Enter the sentance to capitalize words : ")
sentance = gets.chomp

result = sentance.split.map(&:capitalize).join(" ")
puts result

# Output
Enter the sentance to capitalize words : ruby is a programming language
Ruby Is A Programming Language