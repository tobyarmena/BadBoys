acc = 8 //x and y scanned per step
len = 1032//max length of laser 

var ind;
if button = mb_left
    {
    ind = obj_leftarm
    laser = obj_Leftlaser
    }
else if button = mb_right
    {
    ind = obj_rightarm
    laser = obj_Rightlaser
    }

if instance_exists(laser)
{
mindmg = laser.mindmg
maxdmg = laser.maxdmg
}

//scan for collison point
for(i = 0; i< len && !(collision_point(x+lengthdir_x(i,ind.aimdir),y+lengthdir_y(i,ind.aimdir),obj_parent_wall,true,true)) and !(collision_point(x+lengthdir_x(i,ind.aimdir),y+lengthdir_y(i,ind.aimdir),par_enemies,true,true));i+=acc)
global.dis = i + acc

// creating and destroying the laser
if !instance_exists(laser)and mouse_check_button_pressed(button)
instance_create(x+lengthdir_x(global.dis,ind.aimdir),y+lengthdir_y(global.dis,ind.aimdir),laser)

if mouse_check_button_released(button) && instance_exists(laser)
with (laser)
instance_destroy()

// update laser's pos
if instance_exists(laser)
    with(laser)
    {
    x = ind.x  + lengthdir_x(global.dis,ind.aimdir)
    y = ind.y + lengthdir_y(global.dis,ind.aimdir)
    }

    with(par_enemies)
        {
        
        var dir = point_direction(obj_player.x,obj_player.y,x,y)
        var ldx = lengthdir_x(5000,dir)
        var ldy = lengthdir_y(5000,dir)
        if place_meeting(x,y,other.laser)
            {
            physics_apply_force(x,y,ldx,ldy)
            if ltick = 0
            {
            ltick = 5
            hp -= scr_calculatedamage(irandom_range(other.mindmg,other.maxdmg))
            }
            else if ltick > 0
            ltick --
            }
        }
