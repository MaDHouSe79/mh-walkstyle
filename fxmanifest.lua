--[[ ===================================================== ]] --
--[[            MH Walk Style Script by MaDHouSe           ]] --
--[[ ===================================================== ]] --
fx_version 'cerulean'
games {'gta5'}

author 'MaDHouSe'
description 'MH - Walk Styles'
version '1.0.0'

shared_scripts {
    'config.lua',
}

client_scripts {
    '@ox_lib/init.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua', 
    'server/update.lua'
}

dependencies {'oxmysql'}

lua54 'yes'
