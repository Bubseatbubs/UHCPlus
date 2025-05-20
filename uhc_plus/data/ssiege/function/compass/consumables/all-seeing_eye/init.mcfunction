# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Initialize all-seeing eye
tag @s remove UHCP_GTrack
tag @s add UHCP_GTrack
execute as @a[scores={uhcp_initStatus=1..},predicate=!uhcp:augments/immune_to_eye] unless score @s uhcp_initStatus = @a[tag=UHCP_GTrack,limit=1] uhcp_initStatus at @s run function uhcp:consumables/all-seeing_eye/target
execute as @a[scores={uhcp_initStatus=1..}] if score @s uhcp_initStatus = @a[tag=UHCP_GTrack,limit=1] uhcp_initStatus run tellraw @s [{"selector":"@a[tag=UHCP_GTrack,limit=1]","color":"gold"},{"text":" inflicted","color":"gray"},{"text":" Glowing","color":"white"},{"text":" on other teams!","color":"gray"}]
playsound minecraft:block.enchantment_table.use master @a[distance=..4] ~ ~ ~ 1 1 0.4
playsound minecraft:entity.ender_eye.death master @a[distance=..4] ~ ~ ~ 1 1 0.4
particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 100 normal
tag @s remove UHCP_GTrack
kill @n[predicate=uhcp:ender_eye/all-seeing_eye]
