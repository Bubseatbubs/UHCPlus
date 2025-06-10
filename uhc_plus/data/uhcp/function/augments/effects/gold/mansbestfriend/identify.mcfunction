# Mark player
tag @s add UHCP_MansBestFriend

# Identify player's wolves
scoreboard players reset @e[type=minecraft:wolf] uhcp_initStatus
execute as @e[type=minecraft:wolf] store success score @s uhcp_initStatus on owner run function uhcp:augments/effects/gold/mansbestfriend/check
execute as @e[type=minecraft:wolf,scores={uhcp_initStatus=1}] at @s run function uhcp:augments/effects/gold/mansbestfriend/loot

# End
tag @s remove UHCP_MansBestFriend
scoreboard players set @s uhcp_game_time -1
