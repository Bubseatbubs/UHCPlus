# Add Scoreboard Objectives
scoreboard objectives add uhcp_gameTime dummy
scoreboard objectives add uhcp_hungerTimer dummy
scoreboard objectives add uhcp_initStatus dummy
scoreboard objectives add uhcp_lavaCurrentHeight dummy
scoreboard objectives add uhcp_lavaCurrentLayers dummy
scoreboard objectives add uhcp_lavaHeight dummy
scoreboard objectives add uhcp_lavaMaxHeight dummy
scoreboard objectives add uhcp_lavaTime dummy
scoreboard objectives add uhcp_lavaTimeInterval dummy
scoreboard objectives add uhcp_menu trigger
scoreboard objectives add uhcp_settings dummy

# Set default lava scoreboard values
execute unless score stage status matches 2 unless score %uhcp_lavaInit uhcp_initStatus matches 1 run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 50
execute unless score stage status matches 2 unless score %uhcp_lavaInit uhcp_initStatus matches 1 run scoreboard players set %uhcp_lava uhcp_lavaTime 8400

# Temp
datapack disable "file/uhc_pack"
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard players set countdown tick -1
# scoreboard players set stage status 2
