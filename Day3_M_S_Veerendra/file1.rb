# puts "Hello world" 
# name = :Veeru
# age = 10
# puts name.class
# puts age.class

# puts name.object_id
# 10.times do
#   puts name.object_id
# end 

$company = "Day Springs "
NAME = "ruby"
class Example
  @id
  @name
  @age
 
  @@count = 0
  def initialize(id, name, age)
    @cnt = 0
    @id = id 
    @name = name
    @age = age
    @cnt += 1 
    @@count += 1 
  end

  def get_all
    return "[name : #{@name}  age : #{@age}  ] cnt : #{@cnt} Count : #{@@count} Company : #{$company} Tech : #{NAME}"
  end



end

p = Example.new(1, "Veeru" , 22)
puts p.get_all
p1 = Example.new(2, "Yashu", 19)
puts p1.get_all

