# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"

file = File.open("set1-en_us.json")
data = JSON.load(file)

Image.destroy_all

# create image seeds
for i in (0...data.length) do
    # region = data[i][:region]
    name = data[i][:name]
    link =  data[i][:assets][0][:gameAbsolutePath]
    
    img[i] = Image.create(name:name, url:link)
end
# User.destroy_all

# # image seeds
# img1 = Image.create(name:"a", url:"../lorGallery/set1-lite-en_us/en_us/img/cards/01DE001.png")
# img2 = Image.create(name:"b", url:"../lorGallery/set1-lite-en_us/en_us/img/cards/01DE002.png")
# img3 = Image.create(name:"c", url:"../lorGallery/set1-lite-en_us/en_us/img/cards/01DE003.png")
# img4 = Image.create(name:"d", url:"../lorGallery/set1-lite-en_us/en_us/img/cards/01DE004.png")


