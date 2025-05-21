tag @s add UHCP_Init
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_DragonsProtection","UHCP_Summon","UHCP_New"]}
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team
playsound minecraft:entity.ender_dragon.growl master @a[distance=..8] ~ ~ ~ 1 1 1
playsound minecraft:block.stone.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~ ~ 3 3 3 0.01 1000 normal
effect give @s minecraft:resistance 4 100 false

# Assign team scoreboards
scoreboard players set @e[type=!minecraft:player] uhcp_initStatus -1
scoreboard players set @e[distance=..4,type=!#uhcp:inanimate_mobs] uhcp_initStatus 0
execute as @e[distance=..4,type=!#uhcp:inanimate_mobs] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players set @a[gamemode=!survival] uhcp_initStatus -1

# Finish
execute at @n[tag=UHCP_New] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace #uhcp:breakable
execute as @e[distance=..3,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Init] uhcp_team at @s run tp @s ~ ~5 ~
tp @s ~ ~1 ~
tag @s remove UHCP_Init
tag @e remove UHCP_New
