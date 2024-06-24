fx_version 'cerulean'
game { 'gta5' }

author 'Daimler Development'
description 'When someone bug to under ground this script allows to teleport back'
version '1.0'

discord 'discord.gg/daimler' -- or https://discord.gg/8vWKFrVHhd

lua54 'yes'

client_scripts{ 
  "client.lua"
}

shared_scripts {
  '@ox_lib/init.lua',
}

dependency {
  'ox_lib'
}