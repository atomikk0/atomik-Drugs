fx_version 'cerulean'
game 'gta5'

author 'Atomik'
description 'Atomik-Drugs'

shared_scripts { 
	'shared/config_opium.lua',
	'shared/config_weed.lua',
	'shared/config_coke.lua',
}
client_script {
	'client/client_opium.lua',
	'client/client_weed.lua',
	'client/client_coke.lua',
}
server_script {
	'server/server_opium.lua',
	'server/server_weed.lua',
	'server/server_coke.lua',
}
