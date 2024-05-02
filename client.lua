-- client.lua
RegisterNetEvent("checkWeapons:startSkillCheck")
AddEventHandler("checkWeapons:startSkillCheck", function(searcherId)
    local success = lib.skillCheck({'easy', 'medium', 'hard'}, {'w', 'a', 's', 'd'})
    -- After the skill check completes, send the result back to the server
    TriggerServerEvent("checkWeapons:skillCheckResult", searcherId, success)
end)

RegisterNetEvent("checkWeapons:getWeapons")
AddEventHandler("checkWeapons:getWeapons", function(searcherId)
    local ped = GetPlayerPed(-1)  -- Assuming the client script runs on the target's machine
    local weapons = {}
    
    for _, weapon in pairs(Config.WeaponsList) do
        if HasPedGotWeapon(ped, weapon.hash, false) then
            local ammoCount = GetAmmoInPedWeapon(ped, weapon.hash)
            weapons[#weapons + 1] = {name = weapon.name, ammo = ammoCount}
        end
    end
    
    -- Send the collected weapon data to the server, which will forward it to the searcher
    TriggerServerEvent("checkWeapons:sendWeapons", weapons, searcherId)
end)

RegisterNetEvent("checkWeapons:showWeapons")
AddEventHandler("checkWeapons:showWeapons", function(weaponData)
    if not next(weaponData) then
        lib.notify({
            title = 'Search Result',
            description = 'No weapons found.',
            duration = 5000,
            position = 'top-right'
        })
    else
        local description = "The player has the following weapons:\n"
        for _, weapon in ipairs(weaponData) do
            description = description .. weapon.name .. " with " .. weapon.ammo .. " rounds\n"
        end

        lib.notify({
            title = 'Weapons Inventory',
            description = description,
            duration = 5000,
            position = 'top-right'
        })
    end
end)
