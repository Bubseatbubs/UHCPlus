loot give @s loot uhcp:relics/yggdrasil_bark
give @s potion{Potion:"minecraft:strong_regeneration"} 2

execute store result score %health uhcp_a_count run attribute @s generic.max_health get 1
scoreboard players set %CONST_2 uhcp_a_count 2
scoreboard players operation %health uhcp_a_count *= %CONST_2 uhcp_a_count

execute store result storage uhcp:health input.health float 1 run scoreboard players get %health uhcp_a_count

function uhcp:augments/effects/prismatic/gloryofra/givehearts with storage uhcp:health input
tellraw @s [{"text":"Ra blesses you with his impenetrable defenses! ","color":"gold"},{"text":"You've ","color":"gray"},{"text":"doubled your max 🖤","color":"light_purple","bold":true},{"text":", gained ","color":"gray"},{"text":"Yggdrasil's Bark","color":"light_purple","bold":true},{"text":", and ","color":"gray"},{"text":"2 Regeneration II Potions","color":"light_purple"},{"text":".","color":"gray"}]