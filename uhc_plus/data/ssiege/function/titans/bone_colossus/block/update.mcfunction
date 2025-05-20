scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches ..10 run return 0

execute at @s[predicate=uhcp:on_ground] run function uhcp:titans/bone_colossus/block/land
