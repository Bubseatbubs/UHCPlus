loot give @s loot uhcp:relics/yggdrasil_bark
give @s potion{Potion:"minecraft:strong_regeneration"} 2

execute store result score %health uhcp_a_count run attribute @s generic.max_health get 1
scoreboard players set %CONST_2 uhcp_a_count 2
scoreboard players operation %health uhcp_a_count *= %CONST_2 uhcp_a_count

execute store result storage uhcp:health input.health float 1 run scoreboard players get %health uhcp_a_count

function uhcp:augments/effects/prismatic/gloryofra/givehearts with storage uhcp:health input