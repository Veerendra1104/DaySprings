class Parent
  def sample
    puts "Heloo from sample ."
  end

end

p= Parent

p.ancestors.each do |ancestor|
  methods = ancestor.instance_methods(false)
  puts "-----------------------------------------------------------------------"
  puts "From #{ancestor.name} class "
  methods.each do |method|
    puts method
  end
end


puts "-----------------------------------------------------------------------"
puts BasicObject.instance_methods(false)
puts " Object -----------------------------------------------------------------------"

puts Object.methods

# Output 
-----------------------------------------------------------------------
From Parent class 
sample
-----------------------------------------------------------------------
From Object class 
-----------------------------------------------------------------------
From Kernel class 
singleton_class
dup
itself
methods
singleton_methods
protected_methods
private_methods
public_methods
instance_variables
instance_variable_get
instance_variable_set
instance_variable_defined?
remove_instance_variable
instance_of?
kind_of?
is_a?
display
frozen?
tap
then
yield_self
class
public_send
extend
clone
<=>
===
!~
method
public_method
singleton_method
nil?
eql?
respond_to?
define_singleton_method
hash
freeze
inspect
object_id
send
to_s
to_enum
enum_for
-----------------------------------------------------------------------
From BasicObject class
equal?
!
__send__
==
!=
__id__
instance_eval
instance_exec
-----------------------------------------------------------------------
equal?
!
__send__
==
!=
__id__
instance_eval
instance_exec
 Object -----------------------------------------------------------------------
allocate
superclass
subclasses
attached_object
new
autoload
autoload?
<=>
<=
>=
==
===
include?
instance_method
public_instance_method
define_method
included_modules
set_temporary_name
ancestors
attr
attr_reader
attr_writer
attr_accessor
instance_methods
public_instance_methods
protected_instance_methods
private_instance_methods
undefined_instance_methods
constants
const_get
freeze
inspect
const_defined?
const_set
const_missing
class_variables
class_variable_get
remove_class_variable
class_variable_set
<
public_constant
>
const_source_location
class_variable_defined?
private_constant
deprecate_constant
singleton_class?
include
prepend
refinements
to_s
module_exec
class_exec
module_eval
class_eval
remove_method
undef_method
alias_method
name
method_defined?
public_method_defined?
private_method_defined?
protected_method_defined?
public_class_method
private_class_method
singleton_class
dup
itself
methods
singleton_methods
protected_methods
private_methods
public_methods
instance_variables
instance_variable_get
instance_variable_set
instance_variable_defined?
remove_instance_variable
instance_of?
kind_of?
is_a?
display
frozen?
tap
then
yield_self
class
public_send
extend
clone
!~
method
public_method
singleton_method
nil?
eql?
respond_to?
define_singleton_method
hash
object_id
send
to_enum
enum_for
equal?
!
__send__
!=
__id__
instance_eval
instance_exec


