scoreboard players add @s uhcp_a_timer 1
execute if score @s uhcp_a_timer matches 100.. run kill @s

tp @s ^ ^ ^0.5
tag @s add UHCP_CurrentLaser
particle minecraft:gust ~ ~ ~ 0.01 0.01 0.01 0.01 1 normal
execute unless block ~ ~ ~ #uhcp:non_solid_blocks run kill @s
execute as @e[type=!#uhcp:inanimate_mobs,distance=..3] at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=UHCP_CurrentLaser,distance=..1.4] unless score @s uhcp_team = @e[tag=UHCP_CurrentLaser,sort=nearest,limit=1] uhcp_team run function uhcp:relics/runic_sentry/laser/hit
tag @s remove UHCP_CurrentLaser