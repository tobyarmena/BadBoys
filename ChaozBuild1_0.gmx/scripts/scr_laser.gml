acc = 16
len = 1000

var ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}

for(i = 0; i< len && !(collision_point(x+lengthdir_x(i,ind.aimdir),y+lengthdir_y(i,ind.aimdir),obj_parent_wall,true,true));i+=acc)
global.dis = i

if !instance_exists(obj_Rightlaser)
instance_create(x+lengthdir_x(global.dis,ind.aimdir),y+lengthdir_y(global.dis,ind.aimdir),obj_Rightlaser)
if mouse_check_button_released(mb_left) && instance_exists(obj_Rightlaser)
with (obj_Rightlaser)
instance_destroy()

if instance_exists(obj_Leftlaser)
    with(obj_Leftlaser)
    {
    x = obj_leftarm.x  + lengthdir_x(global.dis,ind.aimdir)
    y = obj_leftarm.y + lengthdir_y(global.dis,ind.aimdir)
    }

if instance_exists(obj_Rightlaser)
    with(obj_Rightlaser)
    {
    x = obj_rightarm.x  + lengthdir_x(global.dis,ind.aimdir)
    y = obj_rightarm.y + lengthdir_y(global.dis,ind.aimdir)
    }
