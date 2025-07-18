# sniffer_sonar.mcfunction
# Applies glowing effect to enemy players within 40 blocks of team bases
# Called when %time uhcp_game_time >= %sonar uhcp_game_time
# Runs every 10 seconds (200 ticks), applies glowing for 10 seconds (200 ticks)

# Blue Sonar Detects non-glowing Player
execute if score %blue ssiege_perk_sonar matches 2 at @e[type=marker,tag=BLUE_BASE,limit=1] run execute as @a[gamemode=survival,team=red,distance=..35,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run function ssiege:shop/perks/effects/sonar/red_player_detected
execute if score %blue ssiege_perk_sonar matches 3.. at @e[type=marker,tag=BLUE_BASE,limit=1] run execute as @a[gamemode=survival,team=red,distance=..50,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run function ssiege:shop/perks/effects/sonar/red_player_detected

# Blue team sonar: Apply glowing to red team players near blue base (if blue has sonar perk)
execute if score %blue ssiege_perk_sonar matches 2 at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[gamemode=survival,team=red,distance=..35,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true
execute if score %blue ssiege_perk_sonar matches 3.. at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[gamemode=survival,team=red,distance=..50,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true

# Red Sonar Detects non-glowing Player
execute if score %red ssiege_perk_sonar matches 2 at @e[type=marker,tag=RED_BASE,limit=1] run execute as @a[gamemode=survival,team=blue,distance=..35,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run function ssiege:shop/perks/effects/sonar/blue_player_detected
execute if score %red ssiege_perk_sonar matches 3.. at @e[type=marker,tag=RED_BASE,limit=1] run execute as @a[gamemode=survival,team=blue,distance=..50,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run function ssiege:shop/perks/effects/sonar/blue_player_detected

# Red team sonar: Apply glowing to blue team players near red base (if red has sonar perk)
execute if score %red ssiege_perk_sonar matches 2 at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[gamemode=survival,team=blue,distance=..35,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true
execute if score %red ssiege_perk_sonar matches 3.. at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[gamemode=survival,team=blue,distance=..50,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true

# Schedule next sonar activation (5 seconds = 100 ticks from now)
scoreboard players add %sonar uhcp_game_time 100