# Store bone amount
scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_initStatus run clear @s minecraft:bone
scoreboard players reset @s uhcp_leave
execute if score @s uhcp_initStatus matches 0 run return run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

# Convert bone into absorption hearts
scoreboard players operation @s uhcp_initStatus *= #30 uhcp_const

execute store result storage uhcp:fossil_fuel input.amount float 1 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/fossilfuel/speed with storage uhcp:fossil_fuel input

# Effects
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
particle minecraft:small_gust ~ ~ ~ 0.5 1 0.5 0.1 100 normal
particle minecraft:effect ~ ~ ~ 0.5 1 0.5 0.01 50 normal

scoreboard players set @s uhcp_game_time -1
