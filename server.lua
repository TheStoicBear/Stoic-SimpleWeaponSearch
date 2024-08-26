-- Server-side script
RegisterCommand("checkweapons", function(source, args, rawCommand)
    -- Retrieve player data from the new framework
    local Framework = exports[Config.FrameworkName].getServerFunctions()
    local player = Framework.getPlayer(source)
    
    if not player then
        TriggerClientEvent('chatMessage', source, "Unable to retrieve player data.")
        return
    end

    -- Check if the player has one of the allowed jobs
    if not Config.allowedJobs[player.job] then
        TriggerClientEvent('chatMessage', source, "You do not have the necessary permissions to use this command.")
        return
    end

    -- Ensure a player ID is specified
    if #args < 1 then
        TriggerClientEvent('chatMessage', source, "Please specify a player ID.")
        return
    end

    local targetId = tonumber(args[1])
    if targetId == nil or not GetPlayerEndpoint(targetId) then
        TriggerClientEvent('chatMessage', source, "Player not found or invalid ID.")
        return
    end

    -- Initiate the search and skill check on the target player
    TriggerClientEvent("checkWeapons:startSkillCheck", targetId, source)
end, false)

RegisterServerEvent("checkWeapons:skillCheckResult")
AddEventHandler("checkWeapons:skillCheckResult", function(searcherId, success)
    local src = source  -- The target ID, because it is who triggers this event.
    if success then
        TriggerClientEvent('chatMessage', searcherId, "The target successfully hid their weapons.")
    else
        -- If skill check failed, request the weapon data from the target
        TriggerClientEvent("checkWeapons:getWeapons", src, searcherId)
    end
end)

RegisterServerEvent("checkWeapons:sendWeapons")
AddEventHandler("checkWeapons:sendWeapons", function(weapons, searcherId)
    -- Notify the searcher of the target's weapons
    TriggerClientEvent("checkWeapons:showWeapons", searcherId, weapons)
end)
