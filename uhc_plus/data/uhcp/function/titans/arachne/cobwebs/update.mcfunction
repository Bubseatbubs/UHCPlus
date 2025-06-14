scoreboard players add @s uhcp_timer 1
execute anchored eyes facing entity @p[gamemode=survival] feet run tp @s ^ ^ ^0.14 ~ ~

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_timer matches 32.. run return 0

execute as @a[distance=..2.5,gamemode=survival] run damage @s 4 minecraft:mob_attack by @s
playsound minecraft:block.cobweb.place master @a[distance=..4] 1 1 1
playsound minecraft:block.cobweb.place master @a[distance=..4] 1 1 1
particle minecraft:item_cobweb ~ ~ ~ 1 1 1 1 40 normal
fill ~-2 ~ ~ ~2 ~ ~ minecraft:cobweb keep
fill ~ ~ ~-2 ~ ~ ~2 minecraft:cobweb keep
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_ArachneCobwebClear","UHCP_Summon"]}
kill @s