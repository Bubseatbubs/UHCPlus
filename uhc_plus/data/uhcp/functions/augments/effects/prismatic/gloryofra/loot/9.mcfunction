loot give @s loot uhcp:relics/dragons_protection
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:strong_regeneration"}] 2

execute store result score %health uhcp_aug_count run attribute @s generic.max_health get 1
scoreboard players set %CONST_2 uhcp_aug_count 2
scoreboard players operation %health uhcp_aug_count *= %CONST_2 uhcp_aug_count

execute store result storage uhcp:health input.health float 1 run scoreboard players get %health uhcp_aug_count

function uhcp:augments/effects/prismatic/gloryofra/givehearts with storage uhcp:health input
tellraw @s [{"text":"Ra blesses you with his impenetrable defenses! ","color":"gold"},{"text":"You've ","color":"gray"},{"text":"doubled your max 🖤","color":"light_purple","bold":true},{"text":", gained ","color":"gray"},{"text":"Dragon's Protection","color":"light_purple","bold":true},{"text":", and ","color":"gray"},{"text":"2 Regeneration II Potions","color":"light_purple"},{"text":".","color":"gray"}]
