author "KJ SCripts"
description "/fps menu"

fx_version "cerulean"
game "gta5"
lua54 'yes'

client_scripts {
        'client/client.lua',
}

server_scripts {
        'server/server.lua'
}

shared_scripts {
        '@ox_lib/init.lua'
}

dependencies {
	'ox_lib',
}