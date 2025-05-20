tag @s add UHCP_Owner

# Find targets
execute as @a[tag=!UHCP_Owner,team=!grace_period,distance=..9,gamemode=survival] unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute unless entity @e[tag=UHCP_HarvesterTarget] as @e[tag=!UHCP_Invulnerable,type=!#uhcp:inanimate_mobs,type=!minecraft:player,distance=..9] unless score @s uhcp_id = @p[tag=UHCP_Owner] uhcp_id unless score @s uhcp_team = @p[tag=UHCP_Owner] uhcp_team run tag @s add UHCP_HarvesterTarget
execute if entity @e[tag=UHCP_HarvesterTarget] run return run function uhcp:relics/windfall/offhand/init

tag @s remove UHCP_Owner
scoreboard players reset @s uhcp_leave
