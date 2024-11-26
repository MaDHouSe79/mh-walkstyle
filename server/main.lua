--[[ ===================================================== ]] --
--[[            MH Walk Style Script by MaDHouSe           ]] --
--[[ ===================================================== ]] --
RegisterNetEvent("mh-walkstyle:server:saveWalkStyle", function(style)
    local src = source
    local license = GetPlayerIdentifierByType(src, 'license')
    local result = MySQL.Sync.fetchScalar('SELECT walkstyle FROM players WHERE license = ? LIMIT 1', {license})
    if result ~= nil and style then
        MySQL.Async.execute('UPDATE players SET walkstyle = ? WHERE license = ?', {style, license})
        TriggerClientEvent('mh-walkstyle:client:update', src, style)
    elseif result == nil then
        MySQL.Async.execute("INSERT INTO players (license, walkstyle) VALUES (?, ?)", {license, Config.DefaultWalkStyle})
        TriggerClientEvent('mh-walkstyle:client:update', src, Config.DefaultWalkStyle)
    end
end)

RegisterNetEvent("mh-walkstyle:server:onjoin", function()
    local src = source
    local license = GetPlayerIdentifierByType(src, 'license')
    local result = MySQL.Sync.fetchScalar('SELECT walkstyle FROM players WHERE license = ? LIMIT 1', {license})
    if result then TriggerClientEvent('mh-walkstyle:client:update', src, result) end
end)

CreateThread(function()
    Wait(5100)
    MySQL.Async.execute('ALTER TABLE players ADD COLUMN IF NOT EXISTS walkstyle VARCHAR(255) NOT NULL DEFAULT move_m@multiplayer')
end)