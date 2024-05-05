# Define constants
scoreboard players set %CONST_30 uhcp_aug_count 30

# Store bone amount
execute store result score %bone uhcp_aug_count run clear @s bone

execute if score %bone uhcp_aug_count matches 0 run return 0

# Convert bone into absorption hearts
scoreboard players operation %bone uhcp_aug_count *= %CONST_30 uhcp_aug_count

execute store result storage uhcp:fossil_fuel input.amount float 1 run scoreboard players get %bone uhcp_aug_count
function uhcp:augments/effects/gold/fossilfuel/speed with storage uhcp:fossil_fuel input

# Effects
playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 1 1 1
particle minecraft:small_gust ~ ~ ~ 0.5 1 0.5 0.1 100 normal
particle minecraft:effect ~ ~ ~ 0.5 1 0.5 0.01 50 normal

scoreboard players set @s uhcp_game_time -1
