require 'rest-client'
require 'json'
require 'pry'

# require 'mtg_sdk'

# def get_cards_from_api
#     # for seed
#     # (1..311).each do |page_num|
#     #       url = 'https://api.magicthegathering.io/v1/cards?page=#{page_num}'
#           # response = RestClient.get(url)
#           # cards_hash = JSON.parse(response)
#           # cards_hash["cards"].each do |card_hash|
#     url = 'https://api.magicthegathering.io/v1/cards'
#     response = RestClient.get(url)
#     cards_hash = JSON.parse(response)
#     cards_hash["cards"]
#   # End loop
#
# end


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

# search_by_name("Bosom Buddy")
# search_by_name("Cheap Ass")
# cards = MTG::Card.where(name: 'avacyn').all


#
# def parse_character_movies(films_hash)
#   # some iteration magic and puts out the movies in a nice list
# end
#
# def show_character_movies(character)
#   films_hash = get_character_movies_from_api(character)
#   parse_character_movies(films_hash)
# end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
