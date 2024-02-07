scoreboard players add @s uhcp_a_timer 1

fill ~1 ~ ~2 ~-1 ~2 ~2 minecraft:obsidian
fill ~1 ~ ~-2 ~-1 ~2 ~-2 minecraft:obsidian
fill ~2 ~ ~1 ~2 ~2 ~-1 minecraft:obsidian
fill ~-2 ~ ~1 ~-2 ~2 ~-1 minecraft:obsidian
fill ~1 ~3 ~1 ~-1 ~3 ~-1 minecraft:obsidian
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:obsidian

execute if score @s uhcp_a_timer matches 20 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute if score @s uhcp_a_timer matches 40 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1
execute if score @s uhcp_a_timer matches 60 at @s run playsound block.note_block.harp master @a[distance=..2] ~ ~ ~ 1 1 1

execute if score @s uhcp_a_timer matches ..80 run return fail

fill ~1 ~ ~-2 ~-1 ~2 ~-2 air replace minecraft:obsidian
fill ~2 ~ ~1 ~2 ~2 ~-1 air replace minecraft:obsidian
fill ~1 ~ ~2 ~-1 ~2 ~2 air replace minecraft:obsidian
fill ~-2 ~ ~1 ~-2 ~2 ~-1 air replace minecraft:obsidian
fill ~1 ~3 ~1 ~-1 ~3 ~-1 air replace minecraft:obsidian
fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air replace minecraft:obsidian
playsound minecraft:block.stone.break master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle block obsidian ~ ~ ~ 3 3 3 0.01 1000 normal

kill @s