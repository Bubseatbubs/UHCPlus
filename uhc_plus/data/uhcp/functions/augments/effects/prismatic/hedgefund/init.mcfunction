scoreboard players set %CONST_10 uhcp_aug_count 10
scoreboard players set %CONST_9 uhcp_aug_count 9
execute store result score %gold_block uhcp_aug_count run clear @s minecraft:gold_block 0
execute store result score %gold uhcp_aug_count run clear @s minecraft:gold_ingot 0
execute store result score %gold_nugget uhcp_aug_count run clear @s minecraft:gold_nugget 0
scoreboard players operation %gold_block uhcp_aug_count *= %CONST_9 uhcp_aug_count
scoreboard players operation %gold_nugget uhcp_aug_count /= %CONST_9 uhcp_aug_count
scoreboard players operation %gold uhcp_aug_count += %gold_block uhcp_aug_count
scoreboard players operation %gold uhcp_aug_count += %gold_nugget uhcp_aug_count
scoreboard players operation %gold uhcp_aug_count /= %CONST_10 uhcp_aug_count

execute store result storage uhcp:augment input.amount float 1 run scoreboard players get %gold uhcp_aug_count
function uhcp:augments/effects/prismatic/hedgefund/give with storage uhcp:augment input

scoreboard players add @s uhcp_game_time 3600
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/hedgefund/init
