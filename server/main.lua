--[[ ===================================================== ]] --
--[[            MH Walk Style Script by MaDHouSe           ]] --
--[[ ===================================================== ]] --
RegisterNetEvent("mh-walkstyle:server:saveWalkStyle", function(style)
    local src = source
    local license = GetPlayerIdentifierByType(src, 'license')
    local result = MySQL.Sync.fetchScalar('SELECT walkstyle FROM player_walkstyle WHERE license = ? LIMIT 1', {license})
    if result ~= nil and style then
        MySQL.Async.execute('UPDATE player_walkstyle SET walkstyle = ? WHERE license = ?', {style, license})
        TriggerClientEvent('mh-walkstyle:client:update', src, style)
    elseif result == nil then
        MySQL.Async.execute("INSERT INTO player_walkstyle (license, walkstyle) VALUES (?, ?)", {license, Config.DefaultWalkStyle})
        TriggerClientEvent('mh-walkstyle:client:update', src, Config.DefaultWalkStyle)
    end
end)

RegisterNetEvent("mh-walkstyle:server:onjoin", function()
    local src = source
    local license = GetPlayerIdentifierByType(src, 'license')
    local result = MySQL.Sync.fetchScalar('SELECT walkstyle FROM player_walkstyle WHERE license = ? LIMIT 1', {license})
    if result then TriggerClientEvent('mh-walkstyle:client:update', src, result) end
end)