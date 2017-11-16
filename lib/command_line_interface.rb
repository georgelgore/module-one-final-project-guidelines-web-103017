#### WELCOME METHODS ####



def main_menu
  puts "Welcome to Gathered, a Magic the Gathering Deckbuilder"
  puts "Please tell us your full name:"
  full_name = gets.chomp
  user = User.find_or_create_by(name: full_name)
  puts "Hello, #{user.name}"
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


# Provide search options
def choose_search
  puts "1. Search Cards"
  puts "2. Build a Deck"
  input = gets.chomp
  input

end



##### UNDER DEVELOPMENT #####
def under_development
  puts "Option under development!"
end
