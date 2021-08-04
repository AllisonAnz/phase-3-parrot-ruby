# Create method `parrot` that outputs a given phrase and
# returns the phrase

# Define a method called parrot 
# the method should accept an argument of a string and both puts out 
# the string _and_ return the string at the end of the method 

#The method should have a default argument of Squawk! 

# should output "Squawk!" to the terminal when called without any arguments 
# should return the default phrase, "Squawk!" when called without any arguments
# should output the given phrase when called with an argument 
# should return the given phrase when called with an argument 

def parrot(phrase = "Squawk!")
    puts phrase #outputs phrase
    phrase #returns the phrase
    # or puts "#{phrase}"
end

parrot
parrot("Pretty bird!")
