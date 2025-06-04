RegisterNetEvent('nf_teleporter:goto', function(targetId)
    local playerId = source

    -- get entity hnandle of target
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = {'Sorry, ' .. targetId .. ' doesn\'t exist.', },
        })

        return
    end

    -- get coordinates of target
    local targetPos = GetEntityCoords(targetPed)

    -- send the coordinate to the client so it can go to the target
    TriggerClientEvent('nf_teleporter:teleport', playerId, targetPos)
end)


RegisterNetEvent('nf_teleporter:summon', function(targetId)
    local playerId = source
    print(playerId)
    local playerPed = GetPlayerPed(playerId)
    print(playerPed)
    local playerPos = GetEntityCoords(playerPed)

    TriggerClientEvent('nf_teleporter:teleport', targetId, playerPos)
end)