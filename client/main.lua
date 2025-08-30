--[[ ===================================================== ]] --
--[[            MH Walk Style Script by MaDHouSe           ]] --
--[[ ===================================================== ]] --
local walkStyle = nil
local radialmenu = nil

local function Notify(message, type, length)
    if GetResourceState("ox_lib") ~= 'missing' then
        lib.notify({title = "MH Walk Style", description = message, type = type})
    else
        QBCore.Functions.Notify({text = "MH Cutting Brakes", caption = message}, type, length)
    end
end

local function LoadWalkStyle(style)
    if style ~= nil then
        RequestAnimSet(style)
        while not HasAnimSetLoaded(style) do Citizen.Wait(1) end
        SetPedMovementClipset(PlayerPedId(), style, 1.0)
        Notify("You have seledted the style "..style, "success", 5000)
    end
end

local function OpenMenu(categorie)
    local options = {}
    for label, anim in pairs(Config.MenuCategories[categorie]) do
        local txt = ""
        if walkStyle == anim then txt = "✅" end
        options[#options + 1] = {
            id = label,
            title = "Style "..label.." "..txt,
            description = 'Save walk style',
            arrow = false,
            onSelect = function()
                TriggerServerEvent('mh-walkstyle:server:saveWalkStyle', anim)
            end
        }
    end
    table.sort(options, function(a, b) return a.id < b.id end)
    options[#options + 1] = {
        title = 'Back',
        description = '',
        arrow = false,
        onSelect = function()
            TriggerEvent('mh-walkstyle:client:openCategorieMenu')
        end
    }
    lib.registerContext({ id = 'OpenWalkMenu', title = categorie.." Walk Styles", options = options })
    lib.showContext('OpenWalkMenu')
end

local function OpenCategorieMenu()
    local options = {}
    for label, _ in pairs(Config.MenuCategories) do
        local txt = ""
        for _, anim in pairs(Config.MenuCategories[label]) do
            if walkStyle == anim then txt = "✅" end
        end
        options[#options + 1] = {
            id = label,
            title = label.." "..txt,
            arrow = false,
            onSelect = function()
                OpenMenu(label)
            end
        }
        table.sort(options, function(a, b) return a.id < b.id end)  
    end
    
    options[#options + 1] = {
        title = 'Close',
        description = '',
        arrow = false,
        onSelect = function()
        end
    }
    lib.registerContext({ id = 'OpenCategorieMenu', title = "Walk Styles Categories", options = options })
    lib.showContext('OpenCategorieMenu')
end

RegisterKeyMapping(Config.MenuWalkStyleCommand, "Walk Style Menu", 'keyboard', Config.KeyBindWalkStyleButton)
RegisterCommand(Config.MenuWalkStyleCommand, function()
    TriggerEvent('mh-walkstyle:client:openCategorieMenu')
end, false)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then 
        ResetPedMovementClipset(PlayerPedId()) 
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then 
        TriggerServerEvent('mh-walkstyle:server:onjoin') 
    end
end)

RegisterNetEvent("mh-walkstyle:client:openCategorieMenu", function()
    OpenCategorieMenu()
end)

RegisterNetEvent("mh-walkstyle:client:update", function(style)
    walkStyle = style
    LoadWalkStyle(style)
end)

RegisterNetEvent("hospital:client:Revive", function()
    Wait(2500)
    LoadWalkStyle(walkStyle)
end)

RegisterNetEvent('qb-radialmenu:client:onRadialmenuOpen', function()
    if radialmenu ~= nil then
        exports['qb-radialmenu']:RemoveOption(radialmenu)
        radialmenu = nil
    end
    radialmenu = exports['qb-radialmenu']:AddOption({
        id = 'walkstyle',
        title = 'Walkstyle',
        icon = "person-walking",
        type = 'client',
        event = "mh-walkstyle:client:openCategorieMenu",
        shouldClose = true
    }, radialmenu)
end)
