# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
class Greeter
# hello
def hello(name)
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
  return "Hello, " + name
end

# goodbye
# Takes one string as an arg (a name)
def goodbye(name)
    return "Goodbye, " + name
end

# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
def goodnight(name)
    return "Goodnight, " + name
end
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
def goodmorning(name)
    return "Goodmorning, " + name
end
end
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'

# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket
class Basket
  def initialize
    @shoppinglist = Array.new()
  end
def add(arg)
@shoppinglist << arg
end
def items
return @shoppinglist
end
end
# Basket2
class Basket2
  def initialize
    @shoppinglist = Array.new()
  end
# add
def add(item,amount)
# takes two arguments: a string for the item and a number for the amount of that item
# adds both pieces of information to a list of items
listofitems = {
  "item" => item,
  "amount" => amount
}
@shoppinglist << listofitems
end
# contents
def contents
  return @shoppinglist
end
end
# returns everything that has been added to the basket
# eg: after having added "carrots", 3
# contents returns [{"item" => "carrots", "amount" => 3}]

# Calculator
class Calculator
  def initialize
    @operationhistory = Array.new()
  end
# add
def add(numberOne,numberTwo)
  operationrecorder = {
    "operation" => "add",
    "arguments" => [numberOne, numberTwo],
    "result" => numberOne + numberTwo
  }
  @operationhistory << operationrecorder
  return numberOne+numberTwo
end
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
def multiply(numberOne,numberTwo)
  operationrecorder = {
    "operation" => "multiply",
    "arguments" => [numberOne, numberTwo],
    "result" => numberOne * numberTwo
  }
  @operationhistory << operationrecorder
  return numberOne * numberTwo
end
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
def subtract(numberOne,numberTwo)
  operationrecorder = {
    "operation" => "subtract",
    "arguments" => [numberOne, numberTwo],
    "result" => numberOne - numberTwo
  }
  @operationhistory << operationrecorder
  return numberOne - numberTwo
end
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
def divide(numberOne,numberTwo)
  operationrecorder = {
    "operation" => "divide",
    "arguments" => [numberOne, numberTwo],
    "result" => numberOne / numberTwo
  }
  @operationhistory << operationrecorder
  return numberOne / numberTwo
end
# history
# takes no args
# returns an array containing hashes of the operation, arguments and results of all previous calculations
# eg: after multiplying 4 and 6, the history is
# [{"operation" => "multiply", "arguments" => [4, 6], "result" => 24}]
def history
  return @operationhistory
end
end
# Cohort
class Cohort
  def initialize
    @studentslist = Array.new()
  end
# add_student
def add_student(hash)
  @studentslist << hash
end
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
def students
  return @studentslist
end
# returns all the students who have been added to the cohort
# employed_by
def employed_by(selectemployer)
 @studentslist.select {|student| student['employer'] == selectemployer}
end
end
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer

# Person
# is initialized with a complex hash, for example...
{
  'name' => 'alex',
  'pets' => [
    {'name' => 'arthur', 'animal' => 'cat'},
    {'name' => 'judith', 'animal' => 'dog'},
    {'name' => 'gwen', 'animal' => 'goldfish'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '50', 'street' => 'Commercial Street'},
    {'name' => 'home', 'building' => '10', 'street' => 'South Street'}
  ]
}
class Person
  def initialize(hash)
    @hash = hash
  end
# work_address
# takes no args
# returns the work address in a nice format
# E.g. '50 Commercial Street'
def work_address
  return "#{@hash['addresses'][0]['building']} #{@hash['addresses'][0]['street']}"
end
def home_address
  return "#{@hash['addresses'][1]['building']} #{@hash['addresses'][1]['street']}"
end

# home_address
# takes no args
# returns the home address in a nice format
# E.g. '10 South Street'

# pets
# takes no args
# returns a nice summary of the person's pets
# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen
#
def pets
  name = @hash['name']
  amountofpets = @hash['pets'].length
  returnsentence = "#{name} has #{amountofpets} pets"
  i = 0
  while i <= amountofpets-1
    returnsentence = returnsentence + "\n- "+ "a #{@hash['pets'][i]['animal']} called #{@hash['pets'][i]['name']}"
    i = i + 1
  end
  return returnsentence + "\n"
end

end
