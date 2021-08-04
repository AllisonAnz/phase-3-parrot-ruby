# Link: https://learning.flatironschool.com/courses/2661/pages/puts-print-and-return?module_item_id=202295
# Puts, Print, Return 

# Define and distinguish puts from print 
# Identify implicit return values in Ruby Syntax 
# Distinguish between the display outputs of puts and printfrom their return values.
# Use the explicit return keyword 

# puts and print 
# puts (short for "output string")
# both used to display in the console the result of evaluating Ruby Code 
# difference is puts adds a new line after executing and print does not 

3.times {print "Hello!"}
#=> Hello!Hello!Hello! 

puts ""

3.times {puts "Hello!"}
#=> Hello!
#=> Hello!
#=> Hello!

# How Puts and Print put and print 
# These methods use $stdout global variable provided by Ruby 
# this global variable communicates with your computers standard output strema
# Basically puts and print use the $stdout variable to send info to the output stream on your computer which communicates with your operating system and output that information to the console

# Returning Values 
# A return value is the data returned to the program by the execution of a method, the assignment of a variable
# Everything in Ruby has a return value 
# Code	                Return Value
# "Hello world"	        "Hello world"
# 6 + 3	                9
# president = "Obama"	"Obama"
# total = 6 + 3	        9
# puts "hello world"	nil
# print "hello world"	nil

# puts and print when run in IRB, print values on the screen and then display a line => nil. 
# This is because they may print the value you want, but instead of returning the value, they return nil

# Return Values of method
# Every method in Ruby returns a value by default. 
# This return value will be the value of the last statement 

def restaurant
    restaurant_name = "Guy's American Kitchen & Bar"
    cuisine = "american"
    motto = "Welcome to Flavor Town!"
end

puts restaurant
#=> Welcome to Flavor Town!
# The return value for restaurant is "Welcome to Flavor Town" because it's the last statement evaluated

# Say you're the best chef in the world, Guy Fieri. To make a method that just prints your name and returns nil, you could write:
def print_name
  puts "Guy Fieri"
end 

print_name
#=> Guy Fieri

# To write a method that returns your name but doesn't print anything, you could write:
def return_name
  "Guy Fieri"
end 

return_name
#=> doesn't print 

# To both print and return your name, you could write:

def print_and_return_name
  puts "Guy Fieri"
  "Guy Fieri"
end 

print_and_return_name
#=> Guy Fieri

#if you accidentally switched the order of the lines inside the method:

def broken_print_and_return_name
  "Guy Fieri"
  puts "Guy Fieri"
end 

broken_print_and_return_name
#=> Guy Fieri
# The method would instead print "Guy Fieri" and return nil. 
# This is because the last line that was evaluated was puts ... 
# and the return value of a puts, as seen in the table above, is always nil.

#----------------------------------------------------------------------------
# The Return Keyword 
# The other way to return a value from a method, use the return keyword 
def stylish_chef 
    best_hairstyle = "Guy Fieri"
    return "Martha Stewart"
    "Guy Fieri"
end 

stylish_chef
#=> returns "Marth Stewart", but doesn't print out 

# The explicit use of the return keyword is generally avoided by many Rubyiests
# But there are instances where you might use return instead of relying on implicit returns 

#In the example we create a variable name 
# see the name in reverse 
# The method puts out the reversed name 
# however, b/c we return, the return value of the method will be the orginal name unchanged 
def change_my_name 
    name = "Frank"
    puts name.reverse 
    return name
end

change_my_name
#=> knarF