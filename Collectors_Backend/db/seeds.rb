# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Collection.create(title: 'Batman Comics', description: 'A collection of old Batman Comic Books', total_worth: 200000)
Item.create(name: 'Detective Comics issue 1', description: 'First Appearance of Batman', worth: 100000 , collection_id: 1)
Item.create(name: 'Action Comics issue 1', description: 'First Appearance of Superman', worth: 100000, collection_id: 1)

Collection.create(title: 'Video Games', description: 'A collection of old video games', total_worth: 150)
Item.create(name: 'Turtles in Time', description: 'TMNT game for the super nintendo', worth: 75, collection_id: 2)
Item.create(name: 'Super Mario Allstars', description: 'A collection of the original Mario games for NES and SNES', worth: 75, collection_id: 2)

Collection.create(title: 'Pokemon Cards', description: 'A collection of Mint Condition Pokemon cards', total_worth: 360000)
Item.create(name: 'Shadowless Charizard', description: 'original print of the shadowless Charizard card', worth: 180000, collection_id: 3)
Item.create(name: 'Shadowless Blastoise', description: 'original print of the shadowless Blastoise card', worth: 180000, collection_id: 3)

