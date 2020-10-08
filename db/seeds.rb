500.times do
  Beer.create(brand: Faker::Beer.brand, name: Faker::Beer.name, style: Faker::Beer.style, hop: Faker::Beer.hop, yeast: Faker::Beer.yeast, malts: Faker::Beer.malts, ibu: Faker::Beer.ibu, alcohol: Faker::Beer.alcohol, blg: Faker::Beer.blg)
end

User.create(email: 'jacksonmorgan@hey.com', password_digest: '1111')
User.create(email: 'lkane1499@gmail.com', password_digest: '2222')
User.create(email: 'kevin@buyavette.net', password_digest: '3333')
User.create(email: 'karengrant1011@gmail.com', password_digest: '4444')
User.create(email: 'smudge@cute.org', password_digest: '5555')

puts 'Seeds Created Successfully'