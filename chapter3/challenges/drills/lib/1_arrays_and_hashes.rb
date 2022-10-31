# These exercises will initially recap basic hash and array methods
# Then they'll go a bit deeper on both topics
# Some exercises will require your knowledge of both arrays and hashes

# Arrays I

# fourth_element
# takes one array as an arg
# returns the fourth element
def fourth_element(array)
  return array[3]
end
# average
# takes an array of numbers
# returns the average (the mean)
def average(array)
  return array.sum / array.count
end
# lowest_squared
# takes an array of numbers
# returns the lowest number squared
def lowest_squared(array)
  return array.sort[0] * array.sort[0]
end
# highest_squared
# takes an array of numbers
# returns the highest number squared
def highest_squared(array)
  return array.sort[-1] * array.sort[-1]
end
# Hashes I

# values_summed
# takes a hash where the values are numbers
# returns the total of all the values
def values_summed(hash)
  return hash.values.sum
end
# first_two_keys
# takes a hash
# returns the first two keys
def first_two_keys(hash)
  return hash.keys[0..1]
end
# first_two_values
# takes a hash
# returns the first two values
def first_two_values(hash)
  return hash.values[0..1]
end
# Arrays II

# starts_with_a
# takes one array as an arg
# returns only elements starting with 'a'
def starts_with_a(array)
  array.select { | elements | elements[0] == 'a'}
end

# starts_with_a_vowel
# takes an array as an arg
# returns only the elements that start with a vowel
def starts_with_a_vowel(array)
  array.select { |element| element[0] == 'a' || element[0] == 'e' || element[0] == 'i' || element[0] == 'o' || element[0] == 'u'}
end
# reverse_each_element
# takes an array as an arg
# reverses each element
# E.g. when the arg is ['one', 'two']
# it returns ['eno', 'owt']
def reverse_each_element(array)
  array.map { |element| element.reverse}
end
# sort_by_last_letter
# takes one array as an arg
# returns the array, sorted by the last letter
def sort_by_last_letter(array)
  array.sort_by {|element| element[-1]}
end
# greater_than_5
# takes one array as an arg
# returns only numbers greater than 5
def greater_than_5(array)
  array.select {|element| element > 5}
end
# greater_than
# takes one array and one number as args
# returns only the elements that are greater than the number provided
def greater_than(array,number)
  array.select {|element| element > number}
end
# less_than
# takes one array and one number as args
# returns only the elements that are less than the number provided
def less_than(array, number)
  array.select{|element| element < number}
end
# words_shorter_than
# takes one array and one number as args
# returns only the elements that have fewer characters than the number provided
def words_shorter_than(array, number)
  array.select{|element| element.length < number}
end
# all_above?
# takes an array and a number as args
# returns true if all elements are greater than the number provided
def all_above?(array,number)
  newArray = array.select{|element| element > number}
  newArray == array
end
# all_below?
# takes an array and a number as args
# returns true if all elements are less than the number provided
def all_below?(array,number)
  newArray = array.select{|element| element < number}
  newArray == array
end
# multiply_each_by
# takes one array and one number as args
# returns a new array with each element multiplied by the number provided
def multiply_each_by(array,number)
array.map{|element| element * number}
end
# Hashes II

# where_value_below
# takes a hash and a number as args
# returns key value pairs where the value is less than the number provided
def where_value_below(hash,number)
  hash.select{|key, value|value.to_i < number}
end
# where_key_starts_with
# takes a hash and a letter as args
# returns key value pairs where the key starts with the letter provided
def where_key_starts_with(hash,letter)
  hash.select{|key, value|key[0] == letter}
end
# add_key_value_pair
# takes a hash, a key and a value as args
# returns a the hash with the new key and value added
def add_key_value_pair(hash,key,value)
  hash[key] = value
  return hash
end
# sort_by_key
# takes a hash
# sorts key-value pairs by key
def sort_by_key(hash)
  hash.sort.to_h
end
# sort_by_value
# takes a hash
# sorts key-value pairs by value
def sort_by_value(hash)
  hash.sort_by{|k, v| v}.to_h
end
