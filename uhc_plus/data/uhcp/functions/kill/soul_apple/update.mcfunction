scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 201.. run return 0
execute if score @s uhcp_timer matches ..199 run return 0

data remove entity @s Owner
data merge entity @s {Glowing:0b}