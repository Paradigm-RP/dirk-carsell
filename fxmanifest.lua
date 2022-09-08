fx_version 'cerulean'
game 'gta5'

shared_script {
    'config.lua',
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/functions.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/functions.lua'
}

lua54 'yes'