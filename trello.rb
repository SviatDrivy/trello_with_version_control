require "faraday"

response = Faraday.get("https://api.trello.com/1/boards/LFZoaH46/cards")

require "json"

cards = JSON.parse (response.body)

puts cards

card_names_and_desc = []

cards.each do |cards_hash|
  card_name = cards_hash["name"]
  card_desc = cards_hash["desc"]
  card_names_and_desc += [card_name,card_desc]
end

puts card_names_and_desc
