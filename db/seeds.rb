require 'rest-client'
require 'json'
require 'pry'

    # for seed
    # (1..311).each do |page_num|
    #       url = 'https://api.magicthegathering.io/v1/cards?page=#{page_num}'
          # response = RestClient.get(url)
          # cards_hash = JSON.parse(response)
          # cards_hash["cards"].each do |card_hash|
    (1..311).each do |page_num|

      url = "https://api.magicthegathering.io/v1/cards?page=#{page_num}"
      response = RestClient.get(url)
      cards = JSON.parse(response)
      cards["cards"].each do |card_hash|
        binding.pry

      end


    end
  # End loop
