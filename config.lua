Config = {}

Config.allowedJobs = {
    ["lspd"] = true,
    ["bcso"] = true,
    ["sasp"] = true
}

Config.WeaponsList = {
    -- Handguns
    { hash = `WEAPON_PISTOL`, name = "Pistol" },
    { hash = `WEAPON_PISTOL_MK2`, name = "Pistol Mk II" },
    { hash = `WEAPON_COMBATPISTOL`, name = "Combat Pistol" },
    { hash = `WEAPON_APPISTOL`, name = "AP Pistol" },
    { hash = `WEAPON_STUNGUN`, name = "Stun Gun" },
    { hash = `WEAPON_PISTOL50`, name = "Pistol .50" },
    { hash = `WEAPON_SNSPISTOL`, name = "SNS Pistol" },
    { hash = `WEAPON_SNSPISTOL_MK2`, name = "SNS Pistol Mk II" },
    { hash = `WEAPON_HEAVYPISTOL`, name = "Heavy Pistol" },
    { hash = `WEAPON_VINTAGEPISTOL`, name = "Vintage Pistol" },
    { hash = `WEAPON_FLAREGUN`, name = "Flare Gun" },
    { hash = `WEAPON_MARKSMANPISTOL`, name = "Marksman Pistol" },
    { hash = `WEAPON_REVOLVER`, name = "Heavy Revolver" },
    { hash = `WEAPON_REVOLVER_MK2`, name = "Heavy Revolver Mk II" },
    { hash = `WEAPON_DOUBLEACTION`, name = "Double Action Revolver" },
    { hash = `WEAPON_RAYPISTOL`, name = "Up-n-Atomizer" },
    { hash = `WEAPON_CERAMICPISTOL`, name = "Ceramic Pistol" },
    { hash = `WEAPON_NAVYREVOLVER`, name = "Navy Revolver" },

    -- SMGs & Machine Guns
    { hash = `WEAPON_MICROSMG`, name = "Micro SMG" },
    { hash = `WEAPON_SMG`, name = "SMG" },
    { hash = `WEAPON_SMG_MK2`, name = "SMG Mk II" },
    { hash = `WEAPON_ASSAULTSMG`, name = "Assault SMG" },
    { hash = `WEAPON_COMBATPDW`, name = "Combat PDW" },
    { hash = `WEAPON_MACHINEPISTOL`, name = "Machine Pistol" },
    { hash = `WEAPON_MINISMG`, name = "Mini SMG" },
    { hash = `WEAPON_RAYCARBINE`, name = "Unholy Hellbringer" },

    -- Shotguns
    { hash = `WEAPON_PUMPSHOTGUN`, name = "Pump Shotgun" },
    { hash = `WEAPON_PUMPSHOTGUN_MK2`, name = "Pump Shotgun Mk II" },
    { hash = `WEAPON_SAWNOFFSHOTGUN`, name = "Sawed-Off Shotgun" },
    { hash = `WEAPON_ASSAULTSHOTGUN`, name = "Assault Shotgun" },
    { hash = `WEAPON_BULLPUPSHOTGUN`, name = "Bullpup Shotgun" },
    { hash = `WEAPON_MUSKET`, name = "Musket" },
    { hash = `WEAPON_HEAVYSHOTGUN`, name = "Heavy Shotgun" },
    { hash = `WEAPON_DBSHOTGUN`, name = "Double Barrel Shotgun" },
    { hash = `WEAPON_AUTOSHOTGUN`, name = "Sweeper Shotgun" },

    -- Assault Rifles
    { hash = `WEAPON_ASSAULTRIFLE`, name = "Assault Rifle" },
    { hash = `WEAPON_ASSAULTRIFLE_MK2`, name = "Assault Rifle Mk II" },
    { hash = `WEAPON_CARBINERIFLE`, name = "Carbine Rifle" },
    { hash = `WEAPON_CARBINERIFLE_MK2`, name = "Carbine Rifle Mk II" },
    { hash = `WEAPON_ADVANCEDRIFLE`, name = "Advanced Rifle" },
    { hash = `WEAPON_SPECIALCARBINE`, name = "Special Carbine" },
    { hash = `WEAPON_SPECIALCARBINE_MK2`, name = "Special Carbine Mk II" },
    { hash = `WEAPON_BULLPUPRIFLE`, name = "Bullpup Rifle" },
    { hash = `WEAPON_BULLPUPRIFLE_MK2`, name = "Bullpup Rifle Mk II" },
    { hash = `WEAPON_COMPACTRIFLE`, name = "Compact Rifle" },

    -- Light Machine Guns
    { hash = `WEAPON_MG`, name = "MG" },
    { hash = `WEAPON_COMBATMG`, name = "Combat MG" },
    { hash = `WEAPON_COMBATMG_MK2`, name = "Combat MG Mk II" },
    { hash = `WEAPON_GUSENBERG`, name = "Gusenberg Sweeper" },

    -- Sniper Rifles
    { hash = `WEAPON_SNIPERRIFLE`, name = "Sniper Rifle" },
    { hash = `WEAPON_HEAVYSNIPER`, name = "Heavy Sniper" },
    { hash = `WEAPON_HEAVYSNIPER_MK2`, name = "Heavy Sniper Mk II" },
    { hash = `WEAPON_MARKSMANRIFLE`, name = "Marksman Rifle" },
    { hash = `WEAPON_MARKSMANRIFLE_MK2`, name = "Marksman Rifle Mk II" },

    -- Heavy Weapons
    { hash = `WEAPON_RPG`, name = "RPG" },
    { hash = `WEAPON_GRENADELAUNCHER`, name = "Grenade Launcher" },
    { hash = `WEAPON_GRENADELAUNCHER_SMOKE`, name = "Smoke Grenade Launcher" },
    { hash = `WEAPON_MINIGUN`, name = "Minigun" },
    { hash = `WEAPON_FIREWORK`, name = "Firework Launcher" },
    { hash = `WEAPON_RAILGUN`, name = "Railgun" },
    { hash = `WEAPON_HOMINGLAUNCHER`, name = "Homing Launcher" },
    { hash = `WEAPON_COMPACTLAUNCHER`, name = "Compact Grenade Launcher" },
    { hash = `WEAPON_RAYMINIGUN`, name = "Widowmaker" },

    -- Throwables
    { hash = `WEAPON_GRENADE`, name = "Grenade" },
    { hash = `WEAPON_BZGAS`, name = "BZ Gas" },
    { hash = `WEAPON_MOLOTOV`, name = "Molotov Cocktail" },
    { hash = `WEAPON_STICKYBOMB`, name = "Sticky Bomb" },
    { hash = `WEAPON_PROXMINE`, name = "Proximity Mine" },
    { hash = `WEAPON_SNOWBALL`, name = "Snowball" },
    { hash = `WEAPON_PIPEBOMB`, name = "Pipe Bomb" },
    { hash = `WEAPON_BALL`, name = "Ball" },
    { hash = `WEAPON_SMOKEGRENADE`, name = "Tear Gas" },
    { hash = `WEAPON_FLARE`, name = "Flare" },

    -- Miscellaneous
    { hash = `WEAPON_PETROLCAN`, name = "Jerry Can" },
    { hash = `WEAPON_FIREEXTINGUISHER`, name = "Fire Extinguisher" },
    { hash = `WEAPON_PARACHUTE`, name = "Parachute" },
    { hash = `WEAPON_HAZARDCAN`, name = "Hazardous Jerry Can" }
}
