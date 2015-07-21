if keyboard_check(vk_space)
    {
    physics_mass_properties(phy_mass*0.1, 0, 0, phy_inertia)
    }
else
    {
    physics_mass_properties(0.5, 0, 0, phy_inertia)
    }
