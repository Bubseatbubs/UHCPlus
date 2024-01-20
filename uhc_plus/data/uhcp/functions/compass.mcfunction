# Assign team scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:compass/teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:compass/teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Player compass logic
execute as @a[scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/both] at @s run function uhcp:compass/both
execute as @a[tag=!UHCP_CTracked,scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/mainhand] at @s run function uhcp:compass/mainhand
execute as @a[tag=!UHCP_CTracked,scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/offhand] at @s run function uhcp:compass/offhand

# Remove tag
tag @a remove UHCP_CTracked
