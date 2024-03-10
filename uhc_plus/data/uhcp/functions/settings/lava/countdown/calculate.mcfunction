# Set countdown to minimum if necessary
execute if score %lava_countdown uhcp_settings matches ..-1 run scoreboard players set %lava_countdown uhcp_settings 0

# Notify player of time
scoreboard players set %uhcp_lavaT uhcp_initStatus 72000
scoreboard players operation %uhcp_lavaTH uhcp_gameTime = %lava_countdown uhcp_settings
scoreboard players operation %uhcp_lavaTH uhcp_gameTime /= %uhcp_lavaT uhcp_initStatus
scoreboard players set %uhcp_lavaT uhcp_initStatus 1200
scoreboard players operation %uhcp_lavaTM uhcp_gameTime = %lava_countdown uhcp_settings
scoreboard players operation %uhcp_lavaTM uhcp_gameTime /= %uhcp_lavaT uhcp_initStatus
scoreboard players operation %uhcp_lavaTM2 uhcp_gameTime = %uhcp_lavaTM uhcp_gameTime
scoreboard players set %uhcp_lavaT uhcp_initStatus 60
scoreboard players operation %uhcp_lavaT uhcp_initStatus *= %uhcp_lavaTH uhcp_gameTime
scoreboard players operation %uhcp_lavaTM uhcp_gameTime -= %uhcp_lavaT uhcp_initStatus
scoreboard players set %uhcp_lavaT uhcp_initStatus 20
scoreboard players operation %uhcp_lavaTS uhcp_gameTime = %lava_countdown uhcp_settings
scoreboard players operation %uhcp_lavaTS uhcp_gameTime /= %uhcp_lavaT uhcp_initStatus
scoreboard players set %uhcp_lavaT uhcp_initStatus 60
scoreboard players operation %uhcp_lavaT uhcp_initStatus *= %uhcp_lavaTM2 uhcp_gameTime
scoreboard players operation %uhcp_lavaTS uhcp_gameTime -= %uhcp_lavaT uhcp_initStatus

execute if score %uhcp_lavaTM uhcp_gameTime matches 0..9 run function uhcp:settings/lava/countdown/notify/single
execute if score %uhcp_lavaTM uhcp_gameTime matches 10..59 run function uhcp:settings/lava/countdown/notify/double
