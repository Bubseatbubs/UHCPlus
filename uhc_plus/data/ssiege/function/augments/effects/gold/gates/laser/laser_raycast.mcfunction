# Recursive raycast function that creates the particle line 

# Create a red dust particle at current position
particle dust{color:[0.0,1.0,0.0],scale:.6} ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #air run return run function ssiege:augments/effects/gold/gates/laser/impact

# Reduce step counter
scoreboard players remove @s uhcp_initStatus 1

execute if score @s uhcp_initStatus matches ..0 run function ssiege:augments/effects/gold/gates/laser/impact

execute if score @s uhcp_initStatus matches 1.. run execute rotated ~ ~.9 positioned ^ ^ ^0.4 run function ssiege:augments/effects/gold/gates/laser/laser_raycast


# UNUSED for now, might come back if I decide to implement true gravitational calcs
# Calculate parabolic drop: negative thousandth of remaining steps
#scoreboard players set @s laser_drop 100
#scoreboard players operation @s laser_drop -= @s uhcp_initStatus
#scoreboard players operation @s laser_drop *= @s laser_drop

# Continue raycast with calculated drop
#execute if score @s uhcp_initStatus matches 1.. store result storage ssiege:laser y_offset double -.1 run scoreboard players get @s laser_drop
#execute if score @s uhcp_initStatus matches 1.. run function ssiege:augments/effects/gold/gates/laser/laser_macro with storage ssiege:laser