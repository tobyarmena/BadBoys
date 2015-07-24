
if keyboard_check(vk_space)
    {
    with(obj_player)
        {
        phy_linear_damping = clamp(phy_linear_damping-0.1,originaldamp*0.4,originaldamp)
        }
    
    part_type_size(global.wind_pt,1,1,-0.05,0)
    part_type_speed(global.wind_pt,0.1,0.2,0.5,0)
    part_type_direction(global.wind_pt,obj_player.dir,obj_player.dir,0,0)
    part_particles_create(global.wind_sys,x+irandom_range(-64,64),y+irandom_range(-64,64),global.wind_pt,floor(obj_player.phy_linear_damping))
    candash+=1
    if candash%3==0
        {
        scr_spritetoparticle(obj_skull,c_white)
    scr_spritetoparticle(obj_body,c_white)
    scr_spritetoparticle(obj_leftarm,c_white)
    scr_spritetoparticle(obj_rightarm,c_white)
    scr_spritetoparticle(obj_legs,c_white)
        }
    }
else
    {
    with(obj_player)
        {
        phy_linear_damping = clamp(phy_linear_damping+0.1,originaldamp*0.4,originaldamp)
        }
    candash=0
    }





    


        
        
        
    