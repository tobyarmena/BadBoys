if keyboard_check(vk_space)
    {
    with(obj_player)
        {
        
        phy_linear_damping = clamp(phy_linear_damping-0.1,originaldamp*0.4,originaldamp)
        }
    }
else
    {
    with(obj_player)
        {
        phy_linear_damping = clamp(phy_linear_damping+0.1,originaldamp*0.4,originaldamp)
        }
    }
