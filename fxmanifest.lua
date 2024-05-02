fx_version 'cerulean'
game 'gta5'

-- Define the resource details
author 'TheStoicBear'
description 'Weapon Check System'
version '1.0'
lua54 'yes'

-- Specify shared scripts
shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
    '@ND_Core/init.lua'
}

-- Specify server scripts
server_scripts {
    'server.lua'
}

-- Specify client scripts
client_scripts {
    'client.lua'
}
