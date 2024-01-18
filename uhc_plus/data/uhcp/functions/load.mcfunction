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
scoreboard objectives add uhcp_hunger trigger
scoreboard objectives add uhcp_settings dummy
scoreboard objectives add uhcp_team dummy

# Top Objective for /trigger top command
scoreboard objectives add top trigger

# Set default lava scores
execute unless score stage status matches 2 unless score %timer uhcp_gameTime matches 1.. unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores

# Schedule delayed load
scoreboard players add %uhcp_loadInit uhcp_initStatus 1
execute unless score %uhcp_loadInit uhcp_initStatus matches 2.. run schedule function uhcp:load 20t
execute if score %uhcp_loadInit uhcp_initStatus matches 2.. run function uhcp:load/message
