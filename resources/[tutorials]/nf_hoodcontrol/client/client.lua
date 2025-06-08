RegisterCommand('+openhood', function()
    local playerId = PlayerPedId()
    local playerVehicle = GetVehiclePedIsIn(playerId, false)

    if playerVehicle <= 0 then
        return
    end

    if GetPedInVehicleSeat(playerVehicle, -1) ~= playerId then
        return
    end

    if GetVehicleDoorAngleRatio(playerVehicle, 4) > 0.1 then
        SetVehicleDoorShut(playerVehicle, 4, false)
    else
        SetVehicleDoorOpen(playerVehicle, 4, false, false)
    end
end, false)



RegisterCommand('+opentrunk', function()
    local playerId = PlayerPedId()
    local playerVehicle = GetVehiclePedIsIn(playerId, false)

    if playerVehicle <= 0 then
        return
    end

    if GetPedInVehicleSeat(playerVehicle, -1) ~= playerId then
        return
    end

    if GetVehicleDoorAngleRatio(playerVehicle, 5) > 0.1 then
        SetVehicleDoorShut(playerVehicle, 5, false)
    else
        SetVehicleDoorOpen(playerVehicle, 5, false, false)
    end
end, false)



RegisterCommand('+rollupwindow', function()
    local playerId = PlayerPedId()
    local playerVehicle = GetVehiclePedIsIn(playerId, false)

    if playerVehicle <= 0 then
        return
    end

    if GetPedInVehicleSeat(playerVehicle, -1) ~= playerId then
        return
    end

    RollUpWindow(playerVehicle, 0)
end, false)



RegisterCommand('+rolldownwindow', function()
    local playerId = PlayerPedId()
    local playerVehicle = GetVehiclePedIsIn(playerId, false)

    if playerVehicle <= 0 then
        return
    end

    if GetPedInVehicleSeat(playerVehicle, -1) ~= playerId then
        return
    end

    RollDownWindow(playerVehicle, 0)
end, false)



RegisterKeyMapping('+openhood', 'Open Vehicle Hood', 'keyboard', 'PAGEUP')
RegisterKeyMapping('+opentrunk', 'Open Vehicle Trunk', 'keyboard', 'PAGEDOWN')
RegisterKeyMapping('+rollupwindow', 'Roll Up Vehicle Window', 'keyboard', 'HOME')
RegisterKeyMapping('+rolldownwindow', 'Roll Down Vehicle Window', 'keyboard', 'END')