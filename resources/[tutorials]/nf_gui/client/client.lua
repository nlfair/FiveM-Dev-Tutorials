function showNotification(message, color, flash, saveToBrief)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedSetNextPostBackgroundColor(color)
    EndTextCommandThefeedPostTicker(flash, saveToBrief)
end



function showAdvancedNotification(message, color, sender, subject, textureDict, iconType, saveToBrief)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    ThefeedSetNextPostBackgroundColor(color)
    EndTextCommandThefeedPostMessagetext(textureDict, textureDict, false, iconType, sender, subject)
    EndTextCommandThefeedPostTicker(flase, saveToBrief)
end



function showAlert(message, beep, duration)
    AddTextEntry('NF_ALERT', message)

    BeginTextCommandDisplayHelp('NF_ALERT')
    EndTextCommandDisplayHelp(0, false, beep, duration)
end



RegisterCommand('testNotification', function(_, _, rawCommand)
    showNotification(
        rawCommand,
        130,
        true,
        true
    )
end, false)

RegisterCommand('testAdvancedNotification', function(_, _, rawCommand)
    showAdvancedNotification(
        rawCommand,
        130, -- orange
        'This is Sender',
        'This is Subject',
        'CHAR_AMMUNATION',
        8, -- rp
        true
    )
end, false)

RegisterCommand('testAlert', function(_, _, rawCommand)
    showAlert(
        rawCommand,
        true,
        -1
    )
end, false)

RegisterCommand('testMarker', function()
    CreateThread(function()
        local start = GetGameTimer()

        while GetGameTimer() < (start + 10000) do
            Wait(0)
            
            local playerCoordinates = GetEntityCoords(PlayerPedId())

            DrawMarker(
                6,
                playerCoordinates.x, playerCoordinates.y, playerCoordinates.z,
                0.0, 0.0, 0.0,
                0.0, 0.0, 0.0,
                1.0, 1.0, 1.0,
                0,
                0,
                220,
                180,
                true,
                true,
                2
            )
        end
    end)
end, false)