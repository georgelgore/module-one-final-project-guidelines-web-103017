#### WELCOME METHODS ####
USER= []
# Welcome, get user name
def welcome_menu
  puts ""
  puts ""
  puts "Welcome to Gathered, a Magic the Gathering Deckbuilder"
  puts ""
  puts "Please tell us your full name:"
  full_name = gets.chomp
  user = User.find_or_create_by(name: full_name)
  puts ""
  puts "Hello, #{user.name}! What would you like to do?"
  user
  USER << user
end

# Provide search options
def main_menu
  puts ""
  puts "Main Menu:"
  puts "  1. Search Cards"
  puts "  2. Build a Deck"
  puts ""
  puts "  Type 'exit' to quit"
  puts ""

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
    puts "Input not recognized, please enter a valid number."
    main_menu
  end
end

# Display the search cards menu
def search_cards_menu
  puts "------------------"
  puts "Search Cards Menu:"
  puts "  -1. Search by Name"
  puts "  -2. Search Creatures by Type"
  puts "  -3. Search Instants by Color"
  puts "  -4. Search Sorceries by Color"
  puts "  -5. Return to Main Menu"
  puts ""
  puts "  Type 'exit' to quit"
  puts ""

  input = gets.chomp
  search_cards_menu_reader(input)
end

# Read user input from search cards menu
def search_cards_menu_reader(input)
  case input
  when "1"
    search_cards_by_name
  when "2"
    search_creature_cards
  when "3"
    search_instant_cards
  when "4"
    search_sorcery_cards
  when "5"
    puts "------------------"
    main_menu
  when "exit"
    exit
  else
    puts "Input not recognized, please enter a valid number."
    puts ""
    search_cards_menu
  end
end

######## SEARCH and SAVE MENUS ##########
# Search cards by name
def search_cards_by_name
  puts "~~~~~~~~~~~~~~~~~~"
  puts "Type the name of the card that you wish to find"
  puts ""
  input = gets.chomp
  search_by_name(input)
end

def search_creature_cards
  puts "~~~~~~~~~~~~~~~~~~"
  puts "What Creature type would you like to find?"
  puts ""
  subtype = gets.chomp
  search_creature_by_type(subtype)

end

def search_instant_cards
  puts "~~~~~~~~~~~~~~~~~~"
  puts "What color of Instant cards would you like to find?"
  puts ""
  color = gets.chomp
  search_instants_by_color(color)
end

def search_sorcery_cards
  puts "~~~~~~~~~~~~~~~~~~"
  puts "What color of Sorcery cards would you like to find?"
  puts ""
  color = gets.chomp
  search_sorcery_by_color(color)
end

def save_searched_card(card)
  puts ""
  puts "Would you like to save #{card.name}?"
  puts "    --1. Yes"
  puts "    --2. No"
  puts ""

  input = gets.chomp
  save_searched_card_reader(input, card)
end

######## READER METHODS #########

def save_searched_card_reader(input, card)
  case input
  when "1"
    #binding.pry
    UserCard.find_or_create_by(user_id: USER.first.id, card_id: card.id)
    puts "Card has been added"
    puts ""
    search_cards_menu

  when "2"
    search_cards_menu

  when "3"
    puts "------------------"
    main_menu

  when "exit"
    exit
  else
    puts "Input not recognized, please enter a valid number."
    search_cards_menu
  end
end

########  SEARCH METHODS #########

def search_by_name(name)
  input = name
  if Card.find_by(name: input)
    card = Card.find_by(name: input)
  #binding.pry
    puts "Name: #{card.name}"
    puts "Mana Cost: #{card.manaCost}"
    puts "Converted Mana Cost: #{card.cmc}"
    attr_duplicate?(card.color1, card.color2, "Color")
    puts "Type: #{card.types}"
    attr_duplicate?(card.subtype1, card.subtype2, "Subtype")
    puts "P/T: #{card.power}/#{card.toughness}"

    save_searched_card(card)
  else
    puts "Sorry we could not find that card! Search again!"
    puts ""
    search_cards_by_name
  end
end

def search_creature_by_type(type)
  input = type.capitalize
  if Card.where(subtype1: input)
    creatures = Card.where(subtype1: input)
    puts "Results: #{creatures.count}"
    puts ""
    puts "How many would you like to see?"
    puts ""
    number = gets.chomp
    puts "Name: Color, Convered Mana Cost, (P/T)"
    puts ""
    creatures[0..number.to_i].each{|card| puts "#{card.name}: #{card.color1}, #{card.cmc}, (#{card.power}/#{card.toughness})"}
    puts ""
    puts ""
    search_cards_menu
  else
    puts "Sorry we could not find that card! Search again!"
    puts ""
    search_creature_cards
  end
end

def search_instants_by_color(color)
  input = color.capitalize
  if Card.where(types: "Instant", color1: color)
    instants = Card.where(types: "Instant", color1: color)
    puts "Results: #{instants.count}"
    puts ""
    puts "How many would you like to see?"
    puts ""
    number = gets.chomp
    puts "Name: Color, Convered Mana Cost"
    puts ""
    instants[0..number.to_i].each{|card| puts "#{card.name}: #{card.color1}, #{card.cmc}"}
    puts ""
    puts ""
    search_cards_menu
  else
    puts "Sorry we could not find that card! Search again!"
    puts ""
    search_instant_cards
  end
end

def search_sorcery_by_color(color)
  input = color.capitalize
  if Card.where(types: "Sorcery", color1: color)
    sorceries = Card.where(types: "Sorcery", color1: color)
    puts "Results: #{sorceries.count}"
    puts ""
    puts "How many would you like to see?"
    puts ""
    number = gets.chomp
    puts "Name: Color, Convered Mana Cost"
    puts ""
    sorceries[0..number.to_i].each{|card| puts "#{card.name}: #{card.color1}, #{card.cmc}"}
    puts ""
    puts ""
    search_cards_menu
  else
    puts "Sorry we could not find that card! Search again!"
    puts ""
    search_sorcery_cards
  end
end

##### HELPER #####


def attr_duplicate?(attr1, attr2, attribute)
  if attr1 == attr2 || attr2.nil?
     puts "#{attribute}: #{attr1}"
  elsif
    puts "#{attribute}s: #{attr1}, #{attr2}"
  end
end
