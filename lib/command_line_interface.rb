def welcome
  # puts out a welcome message here!
  puts "Welcome!"
end

# Provide search options
def choose_search
  puts "1. Search By Name"
  input = gets.chomp
  input
  
end

# gets.chomp the card name
def get_name_from_user
  puts "please enter a card name"
  name = gets.chomp
  name
  # use gets to capture the user's input. This method should return that input, downcased.
end
