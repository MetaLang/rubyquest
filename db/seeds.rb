# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	
Room.create([{name: 'Garage', enter_desc: 'All the lights are out and you can’t see a thing. This would be a problem for a special agent who isn’t Dr. Steve Brule but luckily for you, you are Dr. Steve Brule. You whip out your Weener flashlight more formally known as the HyperxXxVision-2000, a world class flashlight built in Weener, Germany. Looking around you first notice three things a door with a keypad, a reflection off a toolbox on the back shelf, and a hideous Bricklin SV-1 the kind of car that only a province like New Brunswick would think is a good idea.'}])

Item.create([{name:	'Toolbox', short_desc: 'It is a normal toolbox', long_desc: 'You shine your HyperxXxVision-2000 at the metal toolbox, it appears to be fastened and easily openable.', connection_id: 0, inventory_id: 0, room_id: 1, takeable: false, useable: false,  openable: true}])  
Item.create([{name: 'Window Breaker', short_desc: 'A functional (?) window breaker', long_desc: 'On further inspection it is old, yes, but its probably functional. The Dr. can put it to use.', connection_id: 0, inventory_id: 0, room_id: 1, takeable: true, useable: true, openable: false}]) 
Item.create([{name: 'Car', short_desc: 'An old car, driven recently', long_desc: 'Looks like an old Bricklin SV-1, one of a few thousand made in Saint John, NB. Ugly car.', connection_id: 0, inventory_id: 0, room_id: 1, takeable: false, useable: false, openable: true}])
Item.create([{name: 'Note', short_desc: 'A battered old piece of paper', long_desc: 'There appears to be a number sequence on the note it reads: 933637', connection_id: 0, inventory_id: 0, room_id: 1, takeable: true, useable: false, openable: false}])
Item.create([{name: 'Keypad', short_desc: 'Its just a regular old keypad', long_desc: 'Taking a closer look it appears that this keypad is used very frequently', connection_id: 0, inventory_id: 0, room_id: 1, takeable: false, useable: false, openable: true}])

Inventory.create([{item_id: 0, user_id: 0, max_cap: 10, current_cap: 10}])