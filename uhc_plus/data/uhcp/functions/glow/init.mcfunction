# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

tag @a remove UHCP_GTrack
tag @s add UHCP_GTrack
execute as @a[scores={uhcp_team=1..64}] unless score @s uhcp_team = @a[tag=UHCP_GTrack,limit=1] uhcp_team at @s run function uhcp:glow/target
execute as @a[scores={uhcp_team=1..64}] if score @s uhcp_team = @a[tag=UHCP_GTrack,limit=1] uhcp_team run tellraw @s [{"selector":"@a[tag=UHCP_GTrack,limit=1]","color":"gold"},{"text":" inflicted","color":"gray"},{"text":" Glowing","color":"white"},{"text":" on other teams!","color":"gray"}]
playsound minecraft:block.enchantment_table.use master @a[distance=..4] ~ ~ ~ 1 1 0.4
playsound minecraft:entity.ender_eye.death master @a[distance=..4] ~ ~ ~ 1 1 0.4
particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 100 normal
tag @s remove UHCP_GTrack
kill @e[distance=..5,predicate=uhcp:ender_eye/all-seeing_eye]
