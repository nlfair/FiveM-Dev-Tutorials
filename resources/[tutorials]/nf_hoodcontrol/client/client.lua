CreateThread(function()
    while true do
        Wait(0)

        local playerId = PlayerPedId()
        local playerVehicle = GetVehiclePedIsIn(playerId, false)

        if playerVehicle > 0 and GetPedInVehicleSeat(playerVehicle, -1) == playerId then
            -- Hood (doesn't work with Panto)
            if IsControlJustReleased(0, 208) then
                if GetVehicleDoorAngleRatio(playerVehicle, 4) > 0.1 then
                    SetVehicleDoorShut(playerVehicle, 4, false)
                else
                    SetVehicleDoorOpen(playerVehicle, 4, false, false)
                end
            end

            -- Trunk
            if IsControlJustReleased(0, 207) then
                if GetVehicleDoorAngleRatio(playerVehicle, 5) > 0.1 then
                    SetVehicleDoorShut(playerVehicle, 5, false)
                else
                    SetVehicleDoorOpen(playerVehicle, 5, false, false)
                end
            end
        end
    end
end)