# sniffer_sonar.mcfunction
# Applies glowing effect to enemy players within 40 blocks of team bases
# Called when %time uhcp_game_time >= %sonar uhcp_game_time
# Runs every 10 seconds (200 ticks), applies glowing for 10 seconds (200 ticks)

# Blue team sonar: Apply glowing to red team players near blue base (if blue has sonar perk)
execute if score %blue ssiege_perk_sonar matches 2.. at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[team=red,distance=..50] glowing 10 0 true

# Red team sonar: Apply glowing to blue team players near red base (if red has sonar perk)
execute if score %red ssiege_perk_sonar matches 2.. at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[team=blue,distance=..50] glowing 10 0 true

# Schedule next sonar activation (10 seconds = 200 ticks from now)
scoreboard players add %sonar uhcp_game_time 200