
//pathfinding

if mp_grid_path(global.grid, path, x, y, argument0.x, argument0.y, true)
{
  t += increment
  var shift = amplitude * sin(t)
  var shiftx = lengthdir_x(shift*800,pdir+90);
  var shifty = lengthdir_y(shift*800,pdir+90);

  physics_apply_force(x, y, shiftx, shifty);
}


