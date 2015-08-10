


//Menu Buttons
if global.paused == false
    {
    global.menupage = "null"
    }

if global.menupage == "main"
    {
    if !instance_exists(obj_resume) && !instance_exists(obj_exit)
        {
        with obj_parent_button
            {
            instance_destroy()
            }
        if global.startmenu == true
            instance_create(view_xview+view_wview/2,view_yview+view_hview/2-128,obj_start)
        else
            instance_create(view_xview+view_wview/2,view_yview+view_hview/2-128,obj_resume)
        instance_create(view_xview+view_wview/2,view_yview+view_hview/2-64,obj_settings)
        instance_create(view_xview+view_wview/2,view_yview+view_hview/2,obj_exit)
        }
    }
if global.menupage == "settings"
    {
    if !instance_exists(obj_back)
        {
        with obj_parent_button
            {
            instance_destroy()
            }
        instance_create(view_xview+view_wview/2,view_yview+view_hview-256+64,obj_back)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-64,obj_r1920x1080)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-128,obj_r1920x1200)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-192,obj_r1600x1200)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-256,obj_r1600x1000)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-320,obj_r1280x1024)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-384,obj_r1280x960)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256,obj_shiftcontrol)
        //instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-448,obj_r1024x768)
        instance_create(view_xview+view_wview/2-128,view_yview+view_hview-256-512,obj_fullscreen)
        }
    }
else if global.menupage == "null"
    {
    with obj_parent_button
        {
        instance_destroy()
        }
    }
