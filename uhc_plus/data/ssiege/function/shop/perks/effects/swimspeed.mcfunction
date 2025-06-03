#reset all values
execute as @a run attribute @s water_movement_efficiency modifier remove ssiege:perk_waterspeed

#blue team
execute as @a[team=blue] run execute if score %blue ssiege_perk_swimspeed matches 2 run attribute @s water_movement_efficiency modifier add ssiege:perk_waterspeed .15 add_value
execute as @a[team=blue] run execute if score %blue ssiege_perk_swimspeed matches 3 run attribute @s water_movement_efficiency modifier add ssiege:perk_waterspeed .3 add_value
#red team
execute as @a[team=red] run execute if score %red ssiege_perk_swimspeed matches 2 run attribute @s water_movement_efficiency modifier add ssiege:perk_waterspeed .15 add_value
execute as @a[team=red] run execute if score %red ssiege_perk_swimspeed matches 3 run attribute @s water_movement_efficiency modifier add ssiege:perk_waterspeed .3 add_value
