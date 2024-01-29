advancement revoke @s only uhcp:augments/used_shield
execute at @s anchored eyes run summon minecraft:marker ^ ^0.5 ^0.1 {Tags:["UHCP_Lasercorp"]}
execute rotated as @s as @e[tag=UHCP_Lasercorp,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

execute store result score @e[tag=UHCP_Lasercorp,sort=nearest,limit=1] uhcp_team run scoreboard players get @s uhcp_team

execute as @e[tag=UHCP_Lasercorp,sort=nearest,limit=1] at @s run function uhcp:augments/effects/prismatic/radiantrelics/lasercorpstriker/raycast