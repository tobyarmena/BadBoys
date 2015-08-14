//checks how many variants 
if hpmax <= 1/2 * hpmax
    {
    variant = irandom_range(0,7);
    }
else
    variant = irandom_range(0,4)

//variants
if variant = 0 //single
    {
    scr_enemyshoot(obj_enemyproj4);
}
if variant = 1 //rapid
    {
    fire = 0;
    alarm[3] = 1;
}
if variant = 2 //four directions
    {
    scr_enemyshoot2(5000,obj_enemyproj4);
}
if variant = 3 //explode
    {
    alarm[4] = 7;
}
if variant = 4 //cone
    {
    scr_enemyshoot3(1000,obj_enemyproj4);
}
if variant = 5 //life drain
    {
    if toxic = false
        {
        alarm [5] = 5;
        damage = 0;
        toxic = true;
    }
    else
        variant = irandom_range(0,7);   
}
else
    
if variant = 6 //confusion
    {
    alarm [6] = 5;
}
if variant = 7 //tracking
    {
    
}
