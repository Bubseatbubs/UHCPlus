scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 1 on passengers run data merge entity @s {text:'{"text":"!","color":"#BF0000","bold":true}'}
execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_timer matches 32.. run return 0

summon minecraft:lightning_bolt ~ ~-1 ~
kill @s