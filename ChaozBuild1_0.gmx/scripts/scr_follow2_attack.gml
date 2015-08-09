
if !collision_line(argument0.x,argument0.y,obj_player.x,obj_player.y,obj_companion,false,false)
    {
    var cdir = point_direction(argument0.x,argument0.y,obj_player.x,obj_player.y)
    xx = argument0.x + lengthdir_x(100,cdir)
    yy = argument0.y + lengthdir_y(100,cdir)
    }
else
    {
    xx = argument0.x
    yy = argument0.y
    }

//pathfinding

if distance_to_object(argument0) >= argument1 && mp_grid_path(global.grid2, path, x, y, xx, yy, true)
{
  var path_x = path_get_point_x(path, 1);
  var path_y = path_get_point_y(path, 1);

  pdir = point_direction(x, y, path_x, path_y);
  var force = argument2;
  var vx = lengthdir_x(force, pdir);
  var vy = lengthdir_y(force, pdir);

  physics_apply_force(x, y, vx, vy);
}

//rotation
var dir_x = path_get_point_x(path, 3);
var dir_y = path_get_point_y(path, 3);

var vdir = point_direction(x, y, dir_x, dir_y);


if(collision_line(x,y,argument0.x,argument0.y,obj_parent_wall,false,true))
    scr_turn(vdir,10)
else
    scr_turn(point_direction(x,y,argument0.x,argument0.y),10)
phy_rotation = -direction
