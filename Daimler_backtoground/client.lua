local config = {
    z_check = 0.0, -- Z-coordinate check value
    freeze = true, -- Freeze player after teleportation
    freeze_time = 5 -- Freeze time in seconds
}

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local _, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, 150.0, 0)

        if coords.z < config.z_check then
            TeleportPlayerToGround(coords, ped)
            ShowBugAlert()
            FreezePlayer(ped, config.freeze_time)
            UnfreezePlayer(ped)
        end

        Citizen.Wait(5)
    end
end)

function TeleportPlayerToGround(coords, ped)
    local _, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, 150.0, 0)
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, groundZ, true, false, false)
end

function ShowBugAlert()
    local alert = lib.alertDialog({
        header = "Bug Registered",
        content = "You have been teleported. Click Confirm to return to RP.",
        centered = true,
        cancel = false,
        size = 'md'
    })

    if alert == 'confirm' then
        print('Bug Registered: Player has been teleported back to the ground level.')
    end
end

function FreezePlayer(ped, time)
    FreezeEntityPosition(ped, true)
    Citizen.Wait(time * 1000) -- convert seconds to milliseconds
end

function UnfreezePlayer(ped)
    FreezeEntityPosition(ped, false)
end
