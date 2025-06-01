#reset all values
execute as @a run attribute @s fall_damage_multiplier modifier remove ssiege:perk_ffall
#blue team
execute as @a[team=blue] run execute if score %blue ssiege_perk_featherfalling matches 2 run attribute @s fall_damage_multiplier modifier add ssiege:perk_ffall -.4 add_multiplied_total
execute as @a[team=blue] run execute if score %blue ssiege_perk_featherfalling matches 3 run attribute @s fall_damage_multiplier modifier add ssiege:perk_ffall -.6 add_multiplied_total
#red team
execute as @a[team=red] run execute if score %red ssiege_perk_featherfalling matches 2 run attribute @s fall_damage_multiplier modifier add ssiege:perk_ffall -.4 add_multiplied_total
execute as @a[team=red] run execute if score %red ssiege_perk_featherfalling matches 3 run attribute @s fall_damage_multiplier modifier add ssiege:perk_ffall -.6 add_multiplied_total
