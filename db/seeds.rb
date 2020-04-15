
require "json"

Image.destroy_all

data = JSON.parse(File.read('/Users/jtlu/Projects/newMod3/lorGallery/db/set1-en_us.json'))
data.each do |instance|
    title = instance["name"]
    link = instance["assets"][0]["gameAbsolutePath"]
    Image.create(name: title, url: link)
end


