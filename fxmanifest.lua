fx_version 'cerulean'
game 'gta5'

name 'Menuss'
version '0.1'
description 'FiveM Menyoo Copy for Server Side'
author 'HowNiceOfYou'

client_scripts {
    '@menuv/menuv.lua',
    'menuss.lua'
}

server_scripts {
    'menuss_server.lua'
}

dependencies {
    'menuv'
}
