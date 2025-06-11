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