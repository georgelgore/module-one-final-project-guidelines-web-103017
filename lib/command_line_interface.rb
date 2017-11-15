def welcome
  # puts out a welcome message here!
  puts "Welcome!"
end

def main_menu
  puts "Welcome to Gathered, a Magic the Gathering Deckbuilder"
  puts "Please select a number:"
end

# Provide search options
def choose_search
  puts "1. Search Cards"
  puts "2. Build a Deck"
  input = gets.chomp
  input

end

# gets.chomp the card name
def get_name_from_user
  puts "please enter a card name"
  name = gets.chomp
  name
end


##### UNDER DEVELOPMENT #####
def under_development
  puts "Option under development!"
end
