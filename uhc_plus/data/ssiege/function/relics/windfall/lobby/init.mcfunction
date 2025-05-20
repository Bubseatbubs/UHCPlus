# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail

tag @s add UHCP_Owner
execute as @a[tag=!UHCP_Owner,team=!grace_period,distance=..9,gamemode=adventure] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] as @e[tag=!UHCP_Invulnerable,type=!#uhcp:inanimate_mobs,type=!minecraft:player,distance=..9] unless score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget

# Stop function if no targets are near
execute unless entity @e[tag=UHCP_HarvesterTarget] run return run tag @s remove UHCP_Owner

# Summon block display
execute at @n[tag=UHCP_HarvesterTarget] run function uhcp:relics/windfall/lobby/target
scoreboard players set @n[tag=UHCP_New] uhcp_aug_tier 0

# Gets team value
scoreboard players operation @n[tag=UHCP_New] uhcp_team = @s uhcp_team

tag @s remove UHCP_Owner
tag @e remove UHCP_HarvesterTarget
tag @e remove UHCP_New
