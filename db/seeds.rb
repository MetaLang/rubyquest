#encoding: utf-8
Room.create([{
    name: 'Garage', 
    enter_desc: 'All the lights are out and you can’t see a thing. This would be a problem for a special agent who isn’t Dr. Steve Brule, but luckily for you, you are Dr. Steve Brule. You whip out your flashlight, more formally known as the HyperXVision-2000. Looking around you first notice three things: a door with a keypad, a toolbox on a shelf at the back of the room, and a hideous Bricklin SV-1, which is the kind of car that only a province like New Brunswick would think is a good idea.'
    }])

Item.create([{
    name: 'Toolbox', 
    short_desc: 'It is a normal toolbox', 
    long_desc: 'You shine your HyperxXxVision-2000 at the metal toolbox. It appears to be fastened, but easily openable.', 
    connection_id: 0, 
    inventory_id: 0, 
    room_id: 1, 
    takeable: false, 
    useable: false,  
    openable: true
}])  

Item.create([{
    name: 'Window Breaker', 
    short_desc: 'A functional (?) window breaker', 
    long_desc: 'You see that is old, yes, but probably still functional. The Dr. can put it to use.', 
    connection_id: 0, 
    inventory_id: 0, 
    room_id: 1, 
    takeable: true, 
    useable: true,
    openable: false
}]) 

Item.create([{
    name: 'Car', 
    short_desc: 'An old car, driven recently', 
    long_desc: 'Looks like an old Bricklin SV-1, one of a few thousand made in Saint John, NB. Ugly car.', 
    connection_id: 0, 
    inventory_id: 0, 
    room_id: 1, 
    takeable: false, 
    useable: false, 
    openable: true
}])

Item.create([{
    name: 'Note', 
    short_desc: 'A crumpled piece of paper', 
    long_desc: 'There appears to be a number sequence on the note! it reads: 933637', 
    connection_id: 0, 
    inventory_id: 0, 
    room_id: 1, 
    takeable: true, 
    useable: false, 
    openable: false
}])

Item.create([{
    name: 'Keypad', 
    short_desc: 'Just a regular old keypad', 
    long_desc: 'Taking a closer look it appears that this keypad is used very frequently', 
    connection_id: 0, 
    inventory_id: 0, 
    room_id: 1, 
    takeable: false, 
    useable: false, 
    openable: true
}])

Inventory.create([{
    item_id: 0, 
    user_id: 0, 
    max_cap: 10, 
    current_cap: 10
}])