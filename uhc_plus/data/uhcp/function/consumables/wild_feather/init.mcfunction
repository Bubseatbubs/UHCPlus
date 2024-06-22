clear @s *[minecraft:custom_data~{uhcp_consumable:4b}] 1

# Featherstorm
execute at @s[scores={uhcp_augment=230}] run function uhcp:augments/effects/prismatic/featherstorm/lightning

# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Teleport player
tag @s add UHCP_BirdMan
execute as @a[tag=!UHCP_BirdMan,scores={uhcp_initStatus=1..}] at @s if score @p[tag=UHCP_BirdMan] uhcp_team = @s uhcp_initStatus run tag @s add UHCP_BirdMaybeTarget
tag @r[tag=UHCP_BirdMaybeTarget] add UHCP_BirdTarget
tp @s @r[tag=UHCP_BirdTarget]
execute unless entity @e[tag=UHCP_BirdTarget] at @s run function uhcp:consumables/wild_feather/solo
tag @s add UHCP_BirdTarget

execute at @a[tag=UHCP_BirdTarget] run playsound minecraft:entity.breeze.jump master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute at @a[tag=UHCP_BirdTarget] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tag @a remove UHCP_BirdMan
tag @a remove UHCP_BirdMaybeTarget
tag @a remove UHCP_BirdTarget
