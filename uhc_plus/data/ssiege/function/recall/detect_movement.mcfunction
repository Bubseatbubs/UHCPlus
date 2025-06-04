# Store current position for all players with recall charge
execute as @s store result score @s uhcp_motion_x1 run data get entity @s Pos[0] 100
execute as @s store result score @s uhcp_motion_y1 run data get entity @s Pos[1] 100
execute as @s store result score @s uhcp_motion_z1 run data get entity @s Pos[2] 100

# Check if position has changed (comparing with previous tick)
execute as @s unless score @s uhcp_motion_x1 = @s uhcp_motion_x2 run return run function ssiege:recall/interrupt_movement
execute as @s unless score @s uhcp_motion_y1 = @s uhcp_motion_y2 run return run function ssiege:recall/interrupt_movement
execute as @s unless score @s uhcp_motion_z1 = @s uhcp_motion_z2 run return run function ssiege:recall/interrupt_movement

scoreboard players operation @s uhcp_motion_x2 = @s uhcp_motion_x1
scoreboard players operation @s uhcp_motion_y2 = @s uhcp_motion_y1
scoreboard players operation @s uhcp_motion_z2 = @s uhcp_motion_z1