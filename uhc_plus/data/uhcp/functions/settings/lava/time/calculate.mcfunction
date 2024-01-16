# Calculate time and set to minimum if necessary
execute if score %uhcp_lavaInit uhcp_initStatus matches 1.. run function uhcp:settings/lava/time/calculate/after
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1.. run function uhcp:settings/lava/time/calculate/before

# Notify player of time
scoreboard players set %uhcp_lava uhcp_initStatus 72000
scoreboard players operation %uhcp_lavaH uhcp_lavaTime = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lavaH uhcp_lavaTime /= %uhcp_lava uhcp_initStatus
scoreboard players set %uhcp_lava uhcp_initStatus 1200
scoreboard players operation %uhcp_lavaM uhcp_lavaTime = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lavaM uhcp_lavaTime /= %uhcp_lava uhcp_initStatus
scoreboard players operation %uhcp_lavaM2 uhcp_lavaTime = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lavaM2 uhcp_lavaTime /= %uhcp_lava uhcp_initStatus
scoreboard players set %uhcp_lava uhcp_initStatus 60
scoreboard players operation %uhcp_lava uhcp_initStatus *= %uhcp_lavaH uhcp_lavaTime
scoreboard players operation %uhcp_lavaM uhcp_lavaTime -= %uhcp_lava uhcp_initStatus
scoreboard players set %uhcp_lava uhcp_initStatus 20
scoreboard players operation %uhcp_lavaS uhcp_lavaTime = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lavaS uhcp_lavaTime /= %uhcp_lava uhcp_initStatus
scoreboard players set %uhcp_lava uhcp_initStatus 60
scoreboard players operation %uhcp_lava uhcp_initStatus *= %uhcp_lavaM2 uhcp_lavaTime
scoreboard players operation %uhcp_lavaS uhcp_lavaTime -= %uhcp_lava uhcp_initStatus
execute if score %uhcp_lavaM uhcp_lavaTime matches 0..9 run function uhcp:settings/lava/time/notify/single
execute if score %uhcp_lavaM uhcp_lavaTime matches 10..59 run function uhcp:settings/lava/time/notify/double
