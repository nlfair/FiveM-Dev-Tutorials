RegisterNetEvent('nf_teleporter:goto', function(targetId)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = {'Sorry, ' .. targetId .. ' doesn\'t exist.', },
        })

        return
    end

    -- get coordinates of target
    local targetPos = GetEntityCoords(targetPed)

    SetEntityCoords(playerPed, targetPos)
end)



RegisterNetEvent('nf_teleporter:summon', function(targetId)
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    local playerPos = GetEntityCoords(playerPed)
    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = {'Sorry, ' .. targetId .. ' doesn\'t exist.', },
        })

        return
    end

    SetEntityCoords(targetPed, playerPos)
end)