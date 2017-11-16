require 'rest-client'
require 'json'
require 'pry'


    (301..311).each do |page_num|

      url = "https://api.magicthegathering.io/v1/cards?page=#{page_num}"
      response = RestClient.get(url)
      cards = JSON.parse(response)
      cards["cards"].each do |card_hash|

        name = card_hash['name']
        manaCost = card_hash['manaCost']
        cmc = card_hash['cmc']
        color1 = card_hash['colors'].first if card_hash['colors']
        color2 = card_hash['colors'].last if card_hash['colors']
        types = card_hash['types'].first if card_hash['types']
        subtype1 = card_hash['subtypes'].first if card_hash['subtypes']
        subtype2 = card_hash['subtypes'].last if card_hash['subtypes']
        text = card_hash['text'].split("\n").join(" ") if card_hash['text']
        power = card_hash['power']
        toughness = card_hash['toughness']

        Card.create(name: name, manaCost: manaCost, cmc: cmc, color1: color1, color2: color2, types: types, subtype1: subtype1, subtype2: subtype2, text: text, power: power, toughness: toughness)
      end

    end
