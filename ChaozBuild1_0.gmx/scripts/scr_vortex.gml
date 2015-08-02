if mouse_check_button(button) && delay = false && instance_number(obj_vortex_pro ) < 2 && place_meeting(mouse_x,mouse_y,obj_parent_wall) = 0 and !collision_line(x,y,mouse_x,mouse_y,obj_parent_wall,true,false)
{
//control delay
delay=true
alarm[0]=20

//recoil of arm
knockback = -10

//variables for positioning 
if abs(obj_player.x - mouse_x) < 450
xx = mouse_x
else if abs(obj_player.x - mouse_x) > 450 and(obj_player.x - mouse_x) > 0
xx = obj_player.x - 450
else if abs(obj_player.x - mouse_x) > 450 and(obj_player.x - mouse_x) < 0
xx = obj_player.x + 450

if abs(obj_player.y - mouse_y) < 450
yy = mouse_y
else if abs(obj_player.y - mouse_y) > 450 and(obj_player.y - mouse_y) > 0
yy  = obj_player.y - 450
else if abs(obj_player.y - mouse_y) > 450 and(obj_player.y - mouse_y) < 0
yy  = obj_player.y + 450

instance_create(xx,yy,obj_vortex_pro )

}
if knockback<0{knockback+=2}
