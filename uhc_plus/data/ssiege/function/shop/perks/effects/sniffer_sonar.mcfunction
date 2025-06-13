# sniffer_sonar.mcfunction
# Applies glowing effect to enemy players within 40 blocks of team bases
# Called when %time uhcp_game_time >= %sonar uhcp_game_time
# Runs every 10 seconds (200 ticks), applies glowing for 10 seconds (200 ticks)

# Blue Sonar Plinks
execute if score %blue ssiege_perk_sonar matches 2 at @e[type=marker,tag=BLUE_BASE,limit=1] run execute as @a[team=red,distance=..35,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1
execute if score %blue ssiege_perk_sonar matches 3.. at @e[type=marker,tag=BLUE_BASE,limit=1] run execute as @a[team=red,distance=..50,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1

# Blue team sonar: Apply glowing to red team players near blue base (if blue has sonar perk)
execute if score %blue ssiege_perk_sonar matches 2 at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[team=red,distance=..35,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true
execute if score %blue ssiege_perk_sonar matches 3.. at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[team=red,distance=..50,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true

# Red Sonar Plinks
execute if score %red ssiege_perk_sonar matches 2 at @e[type=marker,tag=RED_BASE,limit=1] run execute as @a[team=blue,distance=..35,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1
execute if score %red ssiege_perk_sonar matches 3.. at @e[type=marker,tag=RED_BASE,limit=1] run execute as @a[team=blue,distance=..50,predicate=!uhcp:augments/immune_to_eye] unless data entity @s {active_effects:[{id:"minecraft:glowing"}]} at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.9 1 0.1

# Red team sonar: Apply glowing to blue team players near red base (if red has sonar perk)
execute if score %red ssiege_perk_sonar matches 2 at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[team=blue,distance=..35,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true
execute if score %red ssiege_perk_sonar matches 3.. at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[team=blue,distance=..50,predicate=!uhcp:augments/immune_to_eye] glowing 10 0 true

# Schedule next sonar activation (5 seconds = 100 ticks from now)
scoreboard players add %sonar uhcp_game_time 100