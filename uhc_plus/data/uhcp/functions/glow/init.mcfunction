tag @p add UHCP_GTrack
execute as @a[scores={uhcp_team=1..64},sort=nearest,limit=1] unless score @s uhcp_team = @a[tag=UHCP_GTrack,limit=1] uhcp_team at @s run function uhcp:glow/target
execute as @a[scores={uhcp_team=1..64},sort=nearest,limit=1] if score @s uhcp_team = @a[tag=UHCP_GTrack,limit=1] uhcp_team at @s run tellraw @s [{"selector":"@a[tag=UHCP_GTrack,limit=1]","color":"gold"},{"text":" inflicted","color":"gray"},{"text":" Glowing","color":"white"},{"text":" on other teams!","color":"gray"}]
playsound minecraft:block.enchantment_table.use master @a[distance=..4] ~ ~ ~ 1 1 0.4
playsound minecraft:entity.ender_eye.death master @a[distance=..4] ~ ~ ~ 1 1 0.4
particle minecraft:enchanted_hit ~ ~ ~ 0.5 1 0.5 0.1 100 normal
tag @p remove UHCP_GTrack
kill @s