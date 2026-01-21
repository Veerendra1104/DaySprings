# Conditional Statements



stock = -20
is_availabe = false
if stock > 0
  is_availabe = true
else 
  puts "Item not availabe ."
end

puts is_availabe


# Ternary operater

is_active = false 
puts is_active ? " Item present" :  "Not present"

price = 350
discount = 0
if price > 100
  discount = 10
elsif price > 200
  discount = 20
elsif price > 300
  discount = 30
elsif present > 400
  discount = 40  
else
  discount = 5
end

puts discount

case
  price = 350
discount = 0
case price 
when  100..200
  discount = 10
when 201..300
  discount = 20 
when 300..400
  discount = 30
when 400..500
  discount = 40
else
  discount = 5
end

puts discount

price = 350
discount = 0
case  
when price >= 100  &&  price < 200
  discount = 10
when  price>= 200 &&  price < 300
  discount = 20 
when price >= 300 &&  price < 400
  discount = 30
when price >= 400 &&  price < 500
  discount = 40
else
  discount = 5
end

case  price
when 100..200
  discount = 10
when  200..300
  discount = 20 
when 300..400
  discount = 30
when 400..500
  discount = 40
else
  discount = 5
end

puts discount

# unless

stock = 15
unless stock < 0
  puts "Stock availabe"
else
  puts "Stock "


email = true
unless email
  puts "email unavailabe ."
else
  puts "email availabe ."
end 

# Acess Modifiers

class Animal 
  def eat
    puts "Animal is eating ."
  end

  protected 
  def run
    puts "Animal is running ." # Inside the class , to fetch outside the class its should be call from public methods or the subclass can acess .
  end
end

class Dog < Animal 
  def eat
    puts "Dog is eating ."
    sleep
    run
  end

  private  # Inside the class , to fetch outside the class its should be call from public methods .
  def sleep
    puts "Dog is sleeping ."
  end
end

dog1 = Dog.new
dog1.eat

