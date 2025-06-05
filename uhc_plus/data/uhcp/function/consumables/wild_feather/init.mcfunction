# Featherstorm
execute if score %mode uhcp_settings matches 1 run return run function ssiege:recall/finish
execute if score @s uhcp_augment matches 230 run function uhcp:augments/effects/prismatic/featherstorm/lightning

# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Teleport player
tag @s add UHCP_BirdMan
execute as @a[tag=!UHCP_BirdMan,scores={uhcp_initStatus=1..}] at @s if score @a[tag=UHCP_BirdMan,limit=1] uhcp_team = @s uhcp_initStatus run tag @s add UHCP_BirdMaybeTarget
tag @r[tag=UHCP_BirdMaybeTarget] add UHCP_BirdTarget
tp @s @r[tag=UHCP_BirdTarget]
execute unless entity @e[tag=UHCP_BirdTarget] run function uhcp:consumables/wild_feather/solo
tag @s add UHCP_BirdTarget

execute at @s run function uhcp:consumables/wild_feather/effects
tag @s remove UHCP_BirdMan
tag @a remove UHCP_BirdMaybeTarget
tag @a remove UHCP_BirdTarget
scoreboard players reset @s uhcp_leave
