with(argument0)
        {
        global.dash1_sys = part_system_create();
        global.dash1_pt = part_type_create();
        part_type_sprite(global.dash1_pt,sprite_index,false,false,false)
        part_type_orientation(global.dash1_pt,image_angle,image_angle,0,0,false)
        part_type_colour1(global.dash1_pt,argument1)
        part_type_life(global.dash1_pt,20,20)
        part_type_alpha2(global.dash1_pt,0.3,0)
        part_particles_create(global.dash1_sys,x,y,global.dash1_pt,1)
        }
