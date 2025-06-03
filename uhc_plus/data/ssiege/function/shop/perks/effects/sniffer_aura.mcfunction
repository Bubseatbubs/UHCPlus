# sniffer_aura.mcfunction
# Applies regeneration effects to team members while in their base
# Blue base: 266,189 to 286,210
# Red base: -268,-190 to -288,-211
# Unupgraded: Regen I, Level 1: Regen II, Level 2: Regen III, Level 3: Regen IIII

# Blue team aura effects
execute if score %blue ssiege_perk_aura matches 1 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 0 true
execute if score %blue ssiege_perk_aura matches 2 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 1 true
execute if score %blue ssiege_perk_aura matches 3 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 2 true
execute if score %blue ssiege_perk_aura matches 4 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 3 true

# Red team aura effects
execute if score %red ssiege_perk_aura matches 1 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 0 true
execute if score %red ssiege_perk_aura matches 2 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 1 true
execute if score %red ssiege_perk_aura matches 3 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 2 true
execute if score %red ssiege_perk_aura matches 4 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 3 true

# Schedules for 2 second later (40 ticks)
scoreboard players add %aura uhcp_game_time 40