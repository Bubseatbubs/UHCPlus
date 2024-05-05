# Clear previous effects
effect clear @s minecraft:absorption
function uhcp:augments/effects/gold/redstoneritual/reset

# Define constants
scoreboard players set %CONST_64 uhcp_aug_count 64
scoreboard players set %CONST_2 uhcp_aug_count 2
scoreboard players set %CONST_8 uhcp_aug_count 8

# Store redstone amount
execute store result score %redstone uhcp_aug_count run clear @s redstone
execute store result score %redstone_block uhcp_aug_count run clear @s redstone_block

# Convert blocks to redstone dust
scoreboard players operation %redstone_block uhcp_aug_count *= %CONST_8 uhcp_aug_count
scoreboard players operation %redstone uhcp_aug_count += %redstone_block uhcp_aug_count

# Give player back the remaining redstone
scoreboard players operation %redstone_remainder uhcp_aug_count = %redstone uhcp_aug_count
scoreboard players operation %redstone_remainder uhcp_aug_count %= %CONST_64 uhcp_aug_count

execute store result storage uhcp:redstone_ritual input.remainder float 1 run scoreboard players get %redstone_remainder uhcp_aug_count
function uhcp:augments/effects/gold/redstoneritual/dust with storage uhcp:redstone_ritual input

execute if score %redstone uhcp_aug_count matches ..63 run return 0

# Convert redstone into absorption hearts
scoreboard players operation %redstone uhcp_aug_count /= %CONST_64 uhcp_aug_count
scoreboard players operation %redstone uhcp_aug_count *= %CONST_2 uhcp_aug_count
execute store result storage uhcp:redstone_ritual input.absorption float 1 run scoreboard players get %redstone uhcp_aug_count
function uhcp:augments/effects/gold/redstoneritual/absorption with storage uhcp:redstone_ritual input
effect give @s minecraft:absorption infinite 255 true
effect clear @s minecraft:absorption

# Effects
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1 1
particle minecraft:composter ~ ~ ~ 0.5 1 0.5 0.01 50 normal
particle minecraft:effect ~ ~ ~ 0.5 1 0.5 0.01 50 normal

scoreboard players set @s uhcp_game_time -1
