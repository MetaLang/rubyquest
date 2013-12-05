module UsersHelper
    def create_inventory_and_items(user)
        inv = Inventory.new(user_id: @user.id, max_cap: 10, current_cap: 0)
        if inv.save
            Item.create(
                name: 'Toolbox', 
                short_desc: 'It is a normal toolbox', 
                long_desc: 'You shine your HyperxXxVision-2000 at the metal toolbox. It appears to be fastened, but easily openable.', 
                connection_id: nil, 
                inventory_id: inv.id, 
                room_id: 1, 
                takeable: false, 
                taken: false,
                useable: false,  
                used: false,
                openable: true,
                opened: false
            )  

            Item.create(
                name: 'Window Breaker', 
                short_desc: 'A functional (?) window breaker', 
                long_desc: 'You see that it is old, yes, but probably still functional. The Dr. can put it to use.', 
                connection_id: nil, 
                inventory_id: inv.id, 
                room_id: 1, 
                takeable: true, 
                taken: false,
                useable: true,
                used: false,
                openable: false,
                opened: false
            ) 

            Item.create(
                name: 'Car', 
                short_desc: 'An old car, driven recently', 
                long_desc: 'Looks like an old Bricklin SV-1, one of a few thousand made in Saint John, NB. Ugly car.', 
                connection_id: nil, 
                inventory_id: inv.id, 
                room_id: 1, 
                takeable: false, 
                taken: false,
                useable: false,
                used: false, 
                openable: true,
                opened: false
            )

            Item.create(
                name: 'Note', 
                short_desc: 'A crumpled piece of paper', 
                long_desc: 'There appears to be a number sequence on the note! it reads: 933637', 
                connection_id: nil, 
                inventory_id: inv.id, 
                room_id: 1, 
                takeable: true, 
                taken: false,
                useable: false,
                used: false, 
                openable: false,
                opened: false
            )

            Item.create(
                name: 'Keypad', 
                short_desc: 'Just a regular old keypad', 
                long_desc: 'Taking a closer look it appears that this keypad is used very frequently', 
                connection_id: 1, 
                inventory_id: inv.id, 
                room_id: 1, 
                takeable: false, 
                taken: false,
                useable: false,
                used: false, 
                openable: true,
                opened: false
            )
        end
    end
end
