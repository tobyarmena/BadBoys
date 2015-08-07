image_blend = c_red
//obj_crosshair.image_blend = c_red

enemycount = instance_number(par_enemies)
if count > enemycount
    {
    global.killspree += 0.2
    ptfrequency = max(ptfrequency-1,1)
    time = 300
    count = enemycount
    display = global.killspree
    xs = 2
    ys = 2
    }
else if count < enemycount
    {
    count = enemycount
    }
    
xs = max(xs-0.1,1)
ys = max(ys-0.1,1)
    
if time <= 0 && global.killspree != 1
    {
    global.killspree = 1
    display = global.killspree
    ptfrequency = 10
    xs = 2
    ys = 2
    }

if time%ptfrequency = 0
    {
    with(obj_skull)
        {
        increase=global.killspree-1
        killspree_sys = part_system_create();
        killspree_pt = part_type_create();
        part_system_position(killspree_sys, x, y);
        part_system_depth(killspree_sys,-15)
        part_type_sprite(killspree_pt,sprite_index,false,false,false)
        part_type_orientation(killspree_pt,image_angle,image_angle,0,0,false)
        part_type_colour1(killspree_pt,c_red)
        part_type_direction(killspree_pt,0,360,5,5)
        part_type_speed(killspree_pt,2,2,0,0)
        part_type_size(killspree_pt,1.5+increase/2,1.5+increase/2,0,0)
        part_type_life(killspree_pt,10,10)
        part_type_alpha2(killspree_pt,0.1,0)
        part_particles_create(killspree_sys,irandom_range(-10,10),irandom_range(-10,10),killspree_pt,1)
        }
    }
time -= 1
