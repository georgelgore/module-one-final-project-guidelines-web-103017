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
        types = card_hash['types'].first
        subtype1 = card_hash['subtypes'].first
        subtype2 = card_hash['subtypes'].last
        text = card_hash['text'].split("\n").join(" ")
        power = card_hash['power']
        toughness = card_hash['toughness']

        Card.create(name: name, manaCost: manaCost, cmc: cmc, color1: color1, color2: color2, types: types, subtype1: subtype1, subtype2: subtype2, text: text, power: power, toughness: toughness)
      end

    end
