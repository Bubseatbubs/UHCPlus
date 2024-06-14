tag @s add UHCP_Init
function uhcp:relics/durability/reset
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_DragonsProtection","UHCP_Summon","UHCP_New"]}
scoreboard players operation @e[tag=UHCP_DragonsProtection,tag=UHCP_New] uhcp_team = @s uhcp_team
playsound minecraft:entity.ender_dragon.growl master @a[distance=..8] ~ ~ ~ 1 1 1
playsound minecraft:block.stone.place master @a[distance=..10] ~ ~ ~ 1 0.5 1
particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~ ~ 3 3 3 0.01 1000 normal
effect give @s minecraft:resistance 4 100 false
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run function uhcp:relics/dragons_protection/fireballlocations

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Gets team value
scoreboard players operation @n[tag=UHCP_New] uhcp_initStatus = @s uhcp_initStatus
execute if score %game uhcp_initStatus matches 1 at @n[tag=UHCP_New] run fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:air replace #uhcp:breakable
execute as @e[distance=..3,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Init] uhcp_initStatus at @s run tp @s ~ ~4 ~
tp @s ~ ~1 ~
tag @s remove UHCP_Init
tag @e remove UHCP_New
