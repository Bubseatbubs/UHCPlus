# homeguard.mcfunction
# Applies Speed to allied players within 25 blocks of their Sniffer
# Applies Speed to allied players within 10 blocks of their Spawn
# Applies Speed to allied players within 5 blocks of their walkway midpoint
# Called when %time uhcp_game_time >= %homeguard uhcp_game_time

execute if score %blue ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=BLUE_BASE,limit=1] run effect give @a[team=blue,distance=..25] speed 1 0 true
execute if score %blue ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] speed 1 0 true
execute if score %blue ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=BLUE_BASE,limit=1] run execute positioned ~40 ~ ~ run effect give @a[team=blue,distance=..5] speed 1 0 true
execute if score %red ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=RED_BASE,limit=1] run effect give @a[team=red,distance=..25] speed 1 0 true
execute if score %red ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] speed 1 0 true
execute if score %red ssiege_perk_homeguard matches 2.. at @e[type=marker,tag=RED_BASE,limit=1] run execute positioned ~-40 ~ ~ run effect give @a[team=red,distance=..5] speed 1 0 true

# Schedule next homeguard activation
scoreboard players add %homeguard uhcp_game_time 20