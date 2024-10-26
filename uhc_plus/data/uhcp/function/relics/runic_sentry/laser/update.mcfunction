scoreboard players add @s uhcp_timer 1
kill @s[scores={uhcp_timer=100..}]

tp @s ^ ^ ^0.5
tag @s add UHCP_CurrentLaser
particle minecraft:gust ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run kill @s
tag @a[gamemode=!survival] add UHCP_TurretIgnore
execute as @e[distance=..3,tag=!UHCP_Invulnerable,tag=!UHCP_TurretIgnore,predicate=uhcp:targetable] at @s anchored eyes if entity @e[tag=UHCP_CurrentLaser,distance=..1.4] unless score @s uhcp_team = @n[tag=UHCP_CurrentLaser] uhcp_team run function uhcp:relics/runic_sentry/laser/hit
tag @a remove UHCP_TurretIgnore

# Hostile Turret
execute if score @s uhcp_team matches -1 as @p[distance=..2.75,gamemode=survival] at @s anchored eyes if entity @e[tag=UHCP_CurrentLaser,distance=..1.4] unless score @s uhcp_team = @n[tag=UHCP_CurrentLaser] uhcp_team run function uhcp:relics/runic_sentry/laser/hit
tag @s remove UHCP_CurrentLaser
