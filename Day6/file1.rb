arr = [1, 2, 3, 4, 5, 6, 7, 8, 9] 

# For Loop 

for i in 10..20      # for i in the given range .
  puts i
 
end


# While loop

i = 1
while i < 10
  puts i
  i += 1 
end



# loop similar to do while 

i = 0 
loop do
  puts i
  break if i > 10
  i += 1
end


# untill loop

x = 1

until x > 3 do
  puts x
  x += 1
end




# for loop we have redo ( break ) and next( continue )
for i in 10..30
  puts i 
  i += 1
  redo if i = 15 
end






# n.times do

i =0 
10.times do
  puts i 
  i += 1
end

# Collections methods 

# 1. select : returns the new array .

even_nums = arr.select{
  |n|  n % 2 == 0
}

puts even_nums

# 2. map : itirate through all values return new array not change the current array .

print arr.map!{
  |n| n * 2
}

puts
print  arr

# 3. all : its a boolean which return true if all elemetns satisfy the condition other wise false . 

puts "For all "
puts arr.all?{
  |n| n > 5
}



# 4. any : its a boolean which return true if any one elemetn satisfy the condition other wise false . 

puts "For any "
puts arr.any?{
  |n| n > 5
}

