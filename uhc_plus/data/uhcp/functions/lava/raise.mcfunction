# Raise layer to fill by one block (starts at y=-63)
scoreboard players add %uhcp_lava uhcp_lavaCurrentHeight 1

# Notify when lava first rises
execute if score %uhcp_lavaInit uhcp_initStatus matches ..0 run tellraw @a {"text":"Lava is rising.","color":"red"}
execute if score %uhcp_lavaInit uhcp_initStatus matches ..0 run execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

# Calculations
scoreboard players set %uhcp_lava uhcp_initStatus 65
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight += %uhcp_lava uhcp_initStatus
scoreboard players operation %uhcp_lava uhcp_lavaHeight -= %uhcp_lava uhcp_lavaCurrentLayers
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval = %uhcp_lava uhcp_lavaTime
execute if score %uhcp_lava uhcp_lavaHeight matches 1.. run scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval /= %uhcp_lava uhcp_lavaHeight
scoreboard players add %uhcp_lavaInit uhcp_lavaCurrentLayers 1
