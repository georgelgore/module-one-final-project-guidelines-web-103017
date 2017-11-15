require 'rest-client'
require 'json'
require 'pry'
# require 'mtg_sdk'

def get_cards_from_api
  url = 'https://api.magicthegathering.io/v1/cards'
  response = RestClient.get(url)
  cards_hash = JSON.parse(response)

end

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
