class Parent 
  @name
  @age
  def initialize(name, age)
    @name = name 
    @age = age 
  end

  def show
    puts "Hi, #{@name} your age is #{@age}"
  end
end

class Child < Parent
  def initialize(name, age )
    super(name, age)
  end
end

p = Child.new("Veeru", 20)
puts p.show


# The initailzation in child method and one in parent method 

class Parent 
  @name
  def initialize(name)
    @name = name 

  end 
end

class Child < Parent
  def initialize(name , email,age )
    super(name)
    @email = email
    @age = age     
  end

   def show
    puts "Hi, #{@name} your age is #{@age} and your email is : #{@email}"
  end
end

p = Child.new("Veeru","veeru@gmail.com", 20)
p.show


# if the class contains 2 methods with the same name then it fetches last one 
class Parent
  def math_operations(a, b)
    puts a + b
  end
end

class Child < Parent 
   def math_operations(a, b)
    puts a + b + b
  end


  def math_operations(a, b)  # This method will get executed .
    super
    puts  a * b
  end
end


p1 = Child.new
p1.math_operations(10, 20)
