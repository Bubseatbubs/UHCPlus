scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches ..10 run return 0

execute if entity @s[nbt={OnGround:1b}] at @s run function uhcp:titans/bone_colossus/block/land