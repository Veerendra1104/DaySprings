class Base 
  # Kernal module
 def puts 
 end

 #Object class 
 def display
 end


 #String class
 def replace
 end

 # String class method
 puts "String class method ."

 def new

 end


 #Integer / Math class
 def round
 end

 # Basic Object class
 def  instance_exec
 end

end




b= Base.new
puts b.respond_to?(:puts)
puts b.respond_to?(:display)
puts b.respond_to?(:replace)
puts b.respond_to?(:round)
puts b.respond_to?(:instance_exec)
puts b.respond_to?(:new)

# Output 

# String class method .
# true
# true
# true
# true
# true
# true