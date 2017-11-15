require 'rest-client'
require 'json'
require 'pry'


# Search through all cards by name
# Return card info puts statements
def search_by_name(card_name)
  card = Card.find_by(name: card_name)
  puts "Name: #{card.name}"
  puts "Mana Cost: #{card.manaCost}"
  puts "Mana cost total: #{card.cmc}"
  puts "Colors: #{card.colors}"
  puts "Type: #{card.types}"
  puts "Subtypes: #{card.subtypes}"
  puts "Text: #{card.text}"
end
