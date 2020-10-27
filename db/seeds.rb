User.create(name: 'Jackson', email: 'jack@hey.com', phone: '7069746486', password_digest: '1111')
User.create(name: 'Lauren', email: 'lkane1499@gmail.com', phone: '', password_digest: '2222')
User.create(name: 'Kav', email: 'kevin@buyavette.net', phone: '', password_digest: '3333')
User.create(name: 'Kern', email: 'karengrant1011@gmail.com', phone: '', password_digest: '4444')
User.create(name: 'Smudge', email: 'smudge@cute.org', phone: '7064206969', password_digest: '5555')

# 475.times do
#   Beer.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
# end

5.times do
  User.find(1).beers.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end

5.times do
  User.find(2).beers.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end

5.times do
  User.find(3).beers.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end

5.times do
  User.find(4).beers.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end

5.times do
  User.find(5).beers.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end


puts 'Seeds Created Successfully'