#### WELCOME METHODS ####


# Welcome, get user name
def welcome_menu
  puts "Welcome to Gathered, a Magic the Gathering Deckbuilder"
  puts "Please tell us your full name:"
  full_name = gets.chomp
  user = User.find_or_create_by(name: full_name)
  puts "Hello, #{user.name}! What would you like to do?"
  user
end

# Provide search options
def main_menu
  puts "  1. Search Cards"
  puts "  2. Build a Deck"
  input = gets.chomp
  main_menu_reader(input)
end

# Read what input
def main_menu_reader(input)
  case input
  when "1"
    search_cards_menu
    #call search cards menu
  when "2"
    # call deck builder menu
  else
    puts "Input not recognized, please enter a number between 1 and 4."
    main_menu
  end
end

def search_cards_menu
  puts "------------------"
  puts "Search Cards Menu:"
  puts "  1. Search by Name"
  puts "  2. Search by Multiple Attributes"
  puts "  3. Return to Main Menu"
  input = gets.chomp
  search_cards_menu_reader(input)
end

def search_cards_menu_reader(input)


end



#### Deck ####
def build_deck_submenu
  puts "Welcome to Deckbuilder"
  puts "1. Create a Deck"
  puts "Option 2"
end


def create_a_deck(name)
end



#### Get Input ####

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
