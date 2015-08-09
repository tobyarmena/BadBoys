//Shooting
projectile1=instance_create(x,y,argument1) 
projectile2=instance_create(x,y,argument1) 
projectile3=instance_create(x,y,argument1) 

with (projectile1)
    {
    playerdir = point_direction(x,y,obj_player.x,obj_player.y)
    ldx = lengthdir_x(argument0,playerdir)
    ldy = lengthdir_y(argument0,playerdir)
    physics_apply_impulse(x,y,ldx,ldy)
}
with (projectile2)
    {
    playerdir = point_direction(x,y,obj_player.x,obj_player.y)
    ldx = lengthdir_x(argument0,playerdir+25)
    ldy = lengthdir_y(argument0,playerdir+25)
    physics_apply_impulse(x,y,ldx,ldy)
}
with (projectile3)
    {
    playerdir = point_direction(x,y,obj_player.x,obj_player.y)
    ldx = lengthdir_x(argument0,playerdir-25)
    ldy = lengthdir_y(argument0,playerdir-25)
    physics_apply_impulse(x,y,ldx,ldy)
}
