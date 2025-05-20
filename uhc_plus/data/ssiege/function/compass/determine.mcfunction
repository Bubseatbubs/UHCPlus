# Assign team scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Player compass logic
execute as @a[scores={uhcp_initStatus=1..},predicate=uhcp:player_compass/both] run function uhcp:compass/both
execute as @a[tag=!UHCP_CTracked,scores={uhcp_initStatus=1..},predicate=uhcp:player_compass/mainhand] run function uhcp:compass/mainhand
execute as @a[tag=!UHCP_CTracked,scores={uhcp_initStatus=1..},predicate=uhcp:player_compass/offhand] run function uhcp:compass/offhand

# Reset timer
scoreboard players set %compass_time uhcp_itemCount 100

# Remove tag
tag @a remove UHCP_CTracked
