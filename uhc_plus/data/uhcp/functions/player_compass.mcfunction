# Remove tag
tag @a remove UHCP_CTracked

# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Player compass logic
execute as @a[scores={uhcp_initStatus=1..},predicate=uhcp:compass/player_compass/both] at @s run function uhcp:compass/both
execute as @a[tag=!UHCP_CTracked,scores={uhcp_initStatus=1..},predicate=uhcp:compass/player_compass/mainhand] at @s run function uhcp:compass/mainhand
execute as @a[tag=!UHCP_CTracked,scores={uhcp_initStatus=1..},predicate=uhcp:compass/player_compass/offhand] at @s run function uhcp:compass/offhand

# Reset timer
scoreboard players set %uhcp_compassTime uhcp_itemCount 100

# Remove tag
tag @a remove UHCP_CTracked
