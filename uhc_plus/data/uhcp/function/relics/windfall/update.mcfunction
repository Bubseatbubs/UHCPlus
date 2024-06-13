scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches ..10 run return 0

execute if score @s uhcp_timer matches 100.. at @s run function uhcp:relics/windfall/land
execute if entity @s[nbt={OnGround:1b}] at @s run function uhcp:relics/windfall/land
