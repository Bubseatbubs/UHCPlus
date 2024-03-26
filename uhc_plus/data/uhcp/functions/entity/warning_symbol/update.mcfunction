scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 8 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 8 run data merge entity @s {text:'{"text":"!","color":"white","bold":true}'}
execute if score @s uhcp_a_timer matches 12 run data merge entity @s {text:'{"text":"!","color":"dark_red","bold":true}'}
execute if score @s uhcp_a_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 16 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 16 run data merge entity @s {text:'{"text":"!","color":"white","bold":true}'}
execute if score @s uhcp_a_timer matches 20 run data merge entity @s {text:'{"text":"!","color":"dark_red","bold":true}'}
execute if score @s uhcp_a_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 24 run playsound minecraft:block.note_block.bit master @a[distance=..12] ~ ~ ~ 1 2 1
execute if score @s uhcp_a_timer matches 24 run data merge entity @s {text:'{"text":"!","color":"white","bold":true}'}
execute if score @s uhcp_a_timer matches 28 run data merge entity @s {text:'{"text":"!","color":"dark_red","bold":true}'}

execute if score @s uhcp_a_timer matches 32 run kill @s