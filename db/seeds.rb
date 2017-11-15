require 'rest-client'
require 'json'
require 'pry'

  # Card.destroy_all
    # for seed
    # (1..311).each do |page_num|
    #       url = 'https://api.magicthegathering.io/v1/cards?page=#{page_num}'
          # response = RestClient.get(url)
          # cards_hash = JSON.parse(response)
          # cards_hash["cards"].each do |card_hash|
    (251..311).each do |page_num|

      url = "https://api.magicthegathering.io/v1/cards?page=#{page_num}"
      response = RestClient.get(url)
      cards = JSON.parse(response)
      cards["cards"].each do |card_hash|

        name = card_hash['name']
        manaCost = card_hash['manaCost']
        cmc = card_hash['cmc']
        colors = card_hash['colors']
        types = card_hash['types']
        subtypes = card_hash['subtypes']
        text = card_hash['text']
        power = card_hash['power'].to_i
        toughness = card_hash['toughness'].to_i
        Card.create(name: name, manaCost: manaCost, cmc: cmc, colors: colors, types: types, subtypes: subtypes, text: text, power: power, toughness: toughness)
      end

    end
  # End loop
  # t.string :name
  # t.string :manaCost
  # t.integer :cmc
  # t.string :colors
  # t.string :types
  # t.string :subtypes
  # t.text :text
  # t.integer :power
  # t.integer :toughness
