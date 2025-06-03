RegisterCommand('car', function(source, args)
    local vehicleName = args[1] or 'adder'

    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:addMessage', {
            args = { 'Uh oh, ' .. vehicleName .. ' is not a vechicle.', }
        })
        
        return
    end

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(10)
    end

    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)

    local vechicle = CreateVehicle(
        vehicleName,
        playerPos,
        heading,
        true
    )

    SetPedIntoVehicle(playerPed, vechicle, -1)

    SetModelAsNoLongerNeeded(vehicleName)
end, false)