require 'date'

# In this set of exercises you'll build small classes
# Some will have no methods
# Some will have one or two simple methods
# Some will have one or two more complex methods
# Some classes are instantiated with args

# Each exercise will have the same format for the requirements
# The first line tells you what the class name should be
# If the class is instantiated with args, these come next
# The rest tells you what methods should be implemented

# Example requirements

# Greeter
# instantiated with a name. E.g. 'Bobby'
# hello
# returns 'hello, Bobby'
# goodbye
# returns 'goodbye, Bobby'

# Example solution

class Greeter
  def initialize(name)
    @name = name
  end

  def hello
    return 'hello, ' + @name
  end

  def goodbye
    return 'goodbye, ' + @name
  end
end

# Animal
# no methods required
class Animal
end

# Vehicle
# no methods required
class Vehicle
end
# Cat
# speak
# returns 'miaow'
class Cat
def speak
  return 'miaow'
end
end
# Dog
# speak
# returns 'woof'
class Dog
  def speak
    return 'woof'
  end
end
# StringFormatter
# block_caps
# takes a string as an arg
# returns the string in block caps
class StringFormatter
  def block_caps(string)
    return string.upcase
  end
  def lower_case(string)
    return string.downcase
  end
end

# lower_case
# takes a string as an arg
# returns the string in lower case

# Calculator
class Calculator
# add
# takes two numbers as args
# returns the total
def add(numberOne,numberTwo)
  return numberOne + numberTwo
end
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
def multiply(numberOne,numberTwo)
  return numberOne * numberTwo
end
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
def subtract(numberOne,numberTwo)
  return numberOne - numberTwo
end
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
def divide(numberOne,numberTwo)
  return numberOne / numberTwo
end
end
# Apprentice
# is instantiated with two strings
# a name and a cohort name
# name
# returns the name
# cohort
# returns the cohort
# full_details
# returns name and cohort, separated by one comma and one space
# 'E.g. "Rita Smith, June 2030"'
class Apprentice
  def initialize(name, cohortname)
    @name = name
    @cohortname = cohortname
  end
  def name
    return @name
  end
  def cohort
    return @cohortname
  end
  def full_details
    return "#{@name}, #{@cohortname}"
  end
end
# Cohort
# is instantiated with three strings
# a name, a start_date and an end_date
class Cohort
  def initialize(name, start_date, end_date)
    @name = name
    @start_date = start_date
    @end_date = end_date
  end
# name
# returns the cohort name
def name
  return @name
end
# start_date
# returns the start_date as a Date object
def start_date
return DateTime.parse(@start_date)
end
# end_date
# returns the end_date as a Date object
def end_date
  return DateTime.parse(@end_date)
end
# duration
# returns the number of days between start_date and end_date
def duration
  return (DateTime.parse(@end_date) - (DateTime.parse(@start_date))).to_i
end
end
