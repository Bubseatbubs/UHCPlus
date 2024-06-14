scoreboard players add @s uhcp_timer 1
execute if score @s uhcp_timer matches 100.. run kill @s

tp @s ^ ^ ^0.5
tag @s add UHCP_CurrentLaser
particle minecraft:gust ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run kill @s
execute as @e[tag=!UHCP_Invulnerable,predicate=uhcp:targetable,distance=..3] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=UHCP_CurrentLaser,distance=..1.4] unless score @s uhcp_team = @n[tag=UHCP_CurrentLaser] uhcp_team run function uhcp:relics/runic_sentry/laser/hit

# Hostile Turret
execute if score @s uhcp_team matches -1 as @p[distance=..2.75] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=UHCP_CurrentLaser,distance=..1.4] unless score @s uhcp_team = @n[tag=UHCP_CurrentLaser] uhcp_team run function uhcp:relics/runic_sentry/laser/hit
tag @s remove UHCP_CurrentLaser