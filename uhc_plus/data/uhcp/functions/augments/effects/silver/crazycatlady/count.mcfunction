tag @s add UHCP_Owner
scoreboard players reset @s uhcp_aug_count
execute as @e[type=minecraft:cat] on owner if entity @s[tag=UHCP_Owner] run scoreboard players add @s uhcp_aug_count 1
execute if score @s uhcp_aug_count matches 1.. run scoreboard players add @s uhcp_aug_count 1

execute unless score @s uhcp_aug_count matches 1.. run return run tag @s remove UHCP_Owner

execute at @s run particle minecraft:happy_villager ~ ~ ~ 1 1.5 1 0.1 10 normal @s
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute store result storage uhcp:crazy_cat_lady cats.count int 1 run scoreboard players get @s uhcp_aug_count
function uhcp:augments/effects/silver/crazycatlady/macro_heal with storage uhcp:crazy_cat_lady cats

tag @s remove UHCP_Owner

scoreboard players add @s uhcp_game_time 1200
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/silver/crazycatlady/count
