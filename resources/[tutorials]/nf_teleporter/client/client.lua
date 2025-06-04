-- command to go to another player
RegisterCommand('goto', function(_, args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = {'Please provide a target ID.', },
        })

        return
    end

    TriggerServerEvent('nf_teleporter:goto', targetId)
end, false)

-- command to bring a plyer to us
RegisterCommand('summon', function(_, args)
    local targetId = args[1]

    if not targetId  then
        TriggerEvent('chat:addMessage', {
            args = {'Please provide a target ID.', },
        })
    end

    TriggerServerEvent('nf_teleporter:summon', targetId)
end, false)

RegisterNetEvent('nf_teleporter:teleport', function(targetCoordinates)
    local playerPed = PlayerPedId()

    SetEntityCoords(playerPed, targetCoordinates)
end)

-- an event that teleports us to a specific location