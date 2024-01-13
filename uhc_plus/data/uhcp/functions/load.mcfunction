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
scoreboard objectives add uhcp_settings dummy

# Set default lava scoreboard values
scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 150
scoreboard players set %uhcp_lava uhcp_lavaTime 12000

# Temp
datapack disable "file/uhc_pack"
scoreboard objectives add tick dummy
scoreboard objectives add status dummy
scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 320
scoreboard players set %uhcp_lava uhcp_lavaTime 1
scoreboard players set countdown tick -1
# scoreboard players set stage status 2
