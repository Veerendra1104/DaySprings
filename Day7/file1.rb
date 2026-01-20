class Base
  def greet
    puts "Hello from base ."
  end
end


class Child < Base
  def greet
    super
     puts "Heloo world from Child."
  end

  def puts 
    super
  end
end


c = Child.new
puts c.greet
p = Base.new
c = Child.new


puts c.greet


# Ancestors Method : Where the methods fetches if it present from child - parent - object - kernel - Basic object 

puts Child.ancestors
Output
Child
Base
Object
Kernel
BasicObject



# respond_to : which check whether that method is present or not .
puts c.respond_to?(:greet) #true

num = 10 
puts num.respond_to?(:round)
puts num.respond_to?(:sqrt)
puts num.respond_to?(:floor)
puts num.respond_to?(:ceil)



