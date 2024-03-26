scoreboard players add @s uhcp_timer 1
data modify entity @s AngerTime set value 600

execute if score @s uhcp_timer matches 200.. run return run function uhcp:entity/instant_kill