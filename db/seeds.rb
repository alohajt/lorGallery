
require "json"

Image.destroy_all

data = JSON.parse(File.read('/Users/jtlu/Projects/newMod3/lorGallery/db/set1-en_us.json'))
data.each do |instance|
    title = instance["name"]
    link = instance["assets"][0]["gameAbsolutePath"]
    region = instance["region"]
    attack = instance["attack"]
    health = instance["health"]
    cost = instance["cost"]
    description = instance["description"]
    cardCode = instance["cardCode"]
    cardType = instance["type"]
    Image.create(
        name: title, 
        url: link, 
        region: region, 
        attack: attack, 
        health: health,
        cost: cost,
        description: description,
        cardCode: cardCode,
        cardType: cardType
        )
end


