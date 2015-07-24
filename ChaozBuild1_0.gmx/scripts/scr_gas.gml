if mouse_check_button(button) && delay = false && instance_number(obj_gasCan) < 6
{
//control delay
delay=true
alarm[0]=20

//recoil of arm
knockback = -10

//variables for positioning 
var xx,yy,ind;
if button = mb_left{ind = obj_leftarm}
else if button = mb_right{ind = obj_rightarm}
xx = x + lengthdir_x(15,ind.aimdir)
yy = y + lengthdir_y(15,ind.aimdir)
shot_dir=point_direction(x,y,xx,yy)

//shoot projectile

projectile=instance_create(xx,yy,obj_gasCan)
with(projectile)
    {
    point_direction(x,y,xx,yy)
    ldx = lengthdir_x(1000,ind.aimdir)
    ldy = lengthdir_y(1000,ind.aimdir)
    physics_apply_impulse(x,y,ldx,ldy)
    }

}
if knockback<0{knockback+=2}
