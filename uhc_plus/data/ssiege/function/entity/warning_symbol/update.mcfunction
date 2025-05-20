scoreboard players add @s uhcp_timer 1
execute on vehicle if score @s uhcp_timer matches ..0 run return 0

execute if score @s uhcp_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
data merge entity @s[scores={uhcp_timer=8}] {text:{"text":"!","color":"white","bold":true}}
data merge entity @s[scores={uhcp_timer=12}] {text:{"text":"!","color":"dark_red","bold":true}}
execute if score @s uhcp_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
data merge entity @s[scores={uhcp_timer=16}] {text:{"text":"!","color":"white","bold":true}}
data merge entity @s[scores={uhcp_timer=20}] {text:{"text":"!","color":"dark_red","bold":true}}
execute if score @s uhcp_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
data merge entity @s[scores={uhcp_timer=24}] {text:{"text":"!","color":"white","bold":true}}
data merge entity @s[scores={uhcp_timer=28}] {text:{"text":"!","color":"dark_red","bold":true}}

kill @s[scores={uhcp_timer=32}]
