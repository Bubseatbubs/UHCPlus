# Remove tag
tag @a remove UHCP_CTracked

# Assign team scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Player compass logic
execute as @a[scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/both] run function uhcp:compass/both
execute as @a[tag=!UHCP_CTracked,scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/mainhand] run function uhcp:compass/mainhand
execute as @a[tag=!UHCP_CTracked,scores={uhcp_team=1..64},predicate=uhcp:compass/player_compass/offhand] run function uhcp:compass/offhand

# Reset timer
scoreboard players set %uhcp_compassTime uhcp_itemCount 100

# Remove tag
tag @a remove UHCP_CTracked
