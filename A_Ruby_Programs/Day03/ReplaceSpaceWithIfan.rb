print("Enter the sentance to replace the space : ")
sentance = gets.chomp
words = sentance.split(" ")
result = ""

# 1. method
words.each_with_index do |word , index|
    result = result + word
    if index < words.length - 1 
         result = result + "-"  
    end
    
end




print result
puts
# 2. method
result = words.join("-")

print result


# output 
Enter the sentance to replace the space :  Ruby is a simple programming language
Ruby-is-a-simple-programming-language
Ruby-is-a-simple-programming-language