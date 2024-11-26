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

Citizen.CreateThread(function()
    Wait(5100)
    MySQL.Async.execute([[
        CREATE TABLE IF NOT EXISTS `player_walkstyle` (
            `id` int(10) NOT NULL AUTO_INCREMENT,
            `license` varchar(255) NOT NULL,
            `walkstyle` varchar(255) NOT NULL DEFAULT 'move_m@multiplayer',
            PRIMARY KEY (`id`) USING BTREE
        ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;  
    ]])
end)