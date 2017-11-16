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
  puts "Main Menu:"
  puts "  1. Search Cards"
  puts "  2. Build a Deck"
  puts ""
  puts "  Type 'exit' to quit"
  input = gets.chomp
  main_menu_reader(input)
end

# Read user input from main menu
def main_menu_reader(input)
  case input
  when "1"
    search_cards_menu
    #call search cards menu
  when "2"
    # call deck builder menu
  when "exit"
    exit
  else
    puts "Input not recognized, please enter a number between 1 and 4."
    main_menu
  end
end

# Display the search cards menu
def search_cards_menu
  puts "------------------"
  puts "Search Cards Menu:"
  puts "  -1. Search by Name"
  puts "  -2. Search by Multiple Attributes"
  puts "  -3. Return to Main Menu"
  puts ""
  puts "  Type 'exit' to quit"
  input = gets.chomp
  search_cards_menu_reader(input)
end

# Read user input from search cards menu
def search_cards_menu_reader(input)
  case input
  when "1"
    search_cards_by_name
  when "2"
    # call search cards by multiple attributes
  when "3"
    puts "------------------"
    main_menu
  when "exit"
    exit
  else
    puts "Input not recognized, please enter a number between 1 and 3."
    search_cards_menu
  end
end

# Search cards by name
def search_cards_by_name
  puts "~~~~~~~~~~~~~~~~~~"
  puts "Type the name of the card that you wish to find"
  input = gets.chomp
  card = search_by_name(input)
end






#### SEARCHES ####

def search_by_name(input)
  card = Card.find_by(name: input)
  #binding.pry
  puts "Name: #{card.name}"
  puts "Mana Cost: #{card.manaCost}"
  puts "Converted Mana Cost: #{card.cmc}"
  attr_duplicate?(card.color1, card.color2, "Color")
  puts "Type: #{card.types}"
  attr_duplicate?(card.subtype1, card.subtype2, "Subtype")
  puts "#{card.power}/#{card.toughness}"

  save_searched_card(card)
end

def save_searched_card(card)
  puts "Would you like to save #{card.name}?"
  puts "    --1. Yes"
  puts "    --2. No"
  input = gets.chomp
  save_searched_card_reader(input)
end


##### HELPER #####


def attr_duplicate?(attr1, attr2, attribute)
  #binding.pry
  if attr1 == attr2 || attr2.nil?
     puts "#{attribute}: #{attr1}"
  elsif
    puts "#{attribute}s: #{attr1}, #{attr2}"
  end
end
