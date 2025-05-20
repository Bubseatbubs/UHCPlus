# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..277 run return fail
tag @s add UHCP_Init
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_DragonsProtection","UHCP_Summon","UHCP_New"]}
playsound minecraft:entity.ender_dragon.growl master @a[distance=..8] ~ ~ ~ 1 1 1
playsound minecraft:block.stone.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~ ~ 3 3 3 0.01 1000 normal

# Push entities out of obsidian
execute if score @s uhcp_initStatus matches 273..275 run function uhcp:relics/dragons_protection/lobby/push

# Finish
tp @s ~ ~1 ~
tag @s remove UHCP_Init
tag @e remove UHCP_New
