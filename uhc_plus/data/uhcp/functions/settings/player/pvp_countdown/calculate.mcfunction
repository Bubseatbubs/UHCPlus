# Set countdown to minimum if necessary
execute if score %pvp uhcp_settings matches ..-1 run scoreboard players set %pvp uhcp_settings 0

# Notify player of time
scoreboard players set %uhcp_pvp uhcp_initStatus 72000
scoreboard players operation %uhcp_pvpH uhcp_gameTime = %pvp uhcp_settings
scoreboard players operation %uhcp_pvpH uhcp_gameTime /= %uhcp_pvp uhcp_initStatus
scoreboard players set %uhcp_pvp uhcp_initStatus 1200
scoreboard players operation %uhcp_pvpM uhcp_gameTime = %pvp uhcp_settings
scoreboard players operation %uhcp_pvpM uhcp_gameTime /= %uhcp_pvp uhcp_initStatus
scoreboard players operation %uhcp_pvpM2 uhcp_gameTime = %uhcp_pvpM uhcp_gameTime
scoreboard players set %uhcp_pvp uhcp_initStatus 60
scoreboard players operation %uhcp_pvp uhcp_initStatus *= %uhcp_pvpH uhcp_gameTime
scoreboard players operation %uhcp_pvpM uhcp_gameTime -= %uhcp_pvp uhcp_initStatus
scoreboard players set %uhcp_pvp uhcp_initStatus 20
scoreboard players operation %uhcp_pvpS uhcp_gameTime = %pvp uhcp_settings
scoreboard players operation %uhcp_pvpS uhcp_gameTime /= %uhcp_pvp uhcp_initStatus
scoreboard players set %uhcp_pvp uhcp_initStatus 60
scoreboard players operation %uhcp_pvp uhcp_initStatus *= %uhcp_pvpM2 uhcp_gameTime
scoreboard players operation %uhcp_pvpS uhcp_gameTime -= %uhcp_pvp uhcp_initStatus
