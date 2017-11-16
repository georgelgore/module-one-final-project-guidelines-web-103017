require 'rest-client'
require 'json'
require 'pry'


    (0..100).each do |page_num|

      url = "https://api.magicthegathering.io/v1/cards?page=#{page_num}"
      response = RestClient.get(url)
      cards = JSON.parse(response)
      cards["cards"].each do |card_hash|

        name = card_hash['name']
        manaCost = card_hash['manaCost']
        cmc = card_hash['cmc']
        color1 = card_hash['colors'].first
        color2 = card_hash['colors'].last
        type = card_hash['types']
        subtype1 = card_hash['subtypes'].first
        subtype2 = card_hash['subtypes'].last
        text = card_hash['text'].split("\n").join(" ")
        power = card_hash['power']
        toughness = card_hash['toughness']
        Card.create(name: name, manaCost: manaCost, cmc: cmc, colors: colors, types: types, subtypes: subtypes, text: text, power: power, toughness: toughness)
      end

    end
