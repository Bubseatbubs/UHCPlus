# red_regen.mcfunction
# Heals red team members based on their regeneration perk level

# Level 1: Every 40 seconds (800 ticks)
execute if score %red ssiege_perk_regen matches 2 run effect give @a[team=red] instant_health 1 0 true
execute if score %red ssiege_perk_regen matches 2 run scoreboard players add %red_regen uhcp_game_time 800

# Level 2: Every 30 seconds (600 ticks)
execute if score %red ssiege_perk_regen matches 3 run effect give @a[team=red] instant_health 1 0 true
execute if score %red ssiege_perk_regen matches 3 run scoreboard players add %red_regen uhcp_game_time 600

# Level 3: Every 23 seconds (460 ticks)
execute if score %red ssiege_perk_regen matches 4 run effect give @a[team=red] instant_health 1 0 true
execute if score %red ssiege_perk_regen matches 4 run scoreboard players add %red_regen uhcp_game_time 460

# Level 4: Every 17 seconds (340 ticks)
execute if score %red ssiege_perk_regen matches 5 run effect give @a[team=red] instant_health 1 0 true
execute if score %red ssiege_perk_regen matches 5 run scoreboard players add %red_regen uhcp_game_time 340