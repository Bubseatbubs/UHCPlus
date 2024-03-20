clear @s *[custom_data~{uhcp_wildfeather:1b}] 1

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Teleport player
tag @s add UHCP_BirdMan
execute as @a[tag=!UHCP_BirdMan,scores={uhcp_initStatus=1..}] at @s if score @a[tag=UHCP_BirdMan,sort=nearest,limit=1] uhcp_team = @s uhcp_initStatus run tag @s add UHCP_BirdMaybeTarget
tag @r[tag=UHCP_BirdMaybeTarget] add UHCP_BirdTarget
tp @a[tag=UHCP_BirdMan,sort=nearest,limit=1] @r[tag=UHCP_BirdTarget]

execute at @a[tag=UHCP_BirdTarget] run playsound minecraft:entity.breeze.jump master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute at @a[tag=UHCP_BirdTarget] run particle cloud ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tag @a remove UHCP_BirdMan
tag @a remove UHCP_BirdMaybeTarget
tag @a remove UHCP_BirdTarget
