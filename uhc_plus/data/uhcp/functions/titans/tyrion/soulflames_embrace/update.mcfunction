scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_timer matches 32.. run return 0

playsound entity.blaze.shoot master @a[distance=..9] ~ ~ ~ 1 1 0.5
playsound block.fire.ambient master @a[distance=..9] ~ ~ ~ 1 1 0.5
particle soul_fire_flame ~ ~2 ~ 0.25 0.5 0.25 1 300 normal
particle soul ~ ~2 ~ 0.25 0.5 0.25 1 100 normal
summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_TyrionSaber","UHCP_New"]}
kill @s