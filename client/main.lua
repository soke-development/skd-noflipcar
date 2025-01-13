local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        Wait(0)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            local vehicle = GetVehiclePedIsIn(ped, false)
            local roll = GetEntityRoll(vehicle)
            local speed = GetEntitySpeed(vehicle)
            
            if (roll > 75.0 or roll < -75.0) and speed < 2 then
                DisableControlAction(0, 59, true)
                DisableControlAction(0, 60, true)
            else
                EnableControlAction(0, 59, true)
                EnableControlAction(0, 60, true)
            end
        end
    end
end)
