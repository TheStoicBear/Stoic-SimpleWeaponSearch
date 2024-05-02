-- Server-side script
RegisterCommand("checkweapons", function(source, args, rawCommand)
    -- Retrieve player data from NDCore
    local player = NDCore.getPlayer(source)
    if not player then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'Unable to retrieve player data.',
            type = 'error'
        })
        return
    end

    -- Check if the player has one of the allowed jobs
    if not Config.allowedJobs[player.job] then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Access Denied',
            description = 'You do not have the necessary permissions to use this command.',
            type = 'error'
        })
        return
    end

    -- Ensure a player ID is specified
    if #args < 1 then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'Please specify a player ID.',
            type = 'error'
        })
        return
    end

    local targetId = tonumber(args[1])
    if targetId == nil or not GetPlayerEndpoint(targetId) then
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Error',
            description = 'Player not found or invalid ID.',
            type = 'error'
        })
        return
    end

    -- Initiate the search and skill check on the target player
    TriggerClientEvent("checkWeapons:startSkillCheck", targetId, source)
end, false)

RegisterServerEvent("checkWeapons:skillCheckResult")
AddEventHandler("checkWeapons:skillCheckResult", function(searcherId, success)
    local src = source  -- The target ID, because it is who triggers this event.
    if success then
        TriggerClientEvent('ox_lib:notify', searcherId, {
            title = 'Search Outcome',
            description = 'The target successfully hid their weapons.',
            type = 'info'
        })
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
