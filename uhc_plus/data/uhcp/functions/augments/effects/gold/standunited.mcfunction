# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

tag @s add UHCP_StandUnited
execute as @a[distance=..4] if score @s uhcp_team = @p[tag=UHCP_StandUnited] uhcp_team run effect give @p[tag=UHCP_StandUnited] strength 1 0 false
tag @s remove UHCP_StandUnited