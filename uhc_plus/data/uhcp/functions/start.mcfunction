# Start game
scoreboard players reset %time uhcp_gameTime
scoreboard players set %uhcp_gameStart uhcp_initStatus 1
scoreboard players set %AUG_7 uhcp_gameTime 2400
scoreboard players set %AUG_15 uhcp_gameTime 2400
scoreboard players set %AUG_27 uhcp_gameTime 12000
execute if score %uhcp_dimTime uhcp_gameTime matches ..-1 run scoreboard players set %uhcp_dimTime uhcp_gameTime 0

scoreboard objectives setdisplay sidebar uhcp_displayTime
scoreboard objectives setdisplay below_name hearts

# Reset UHC Pack Timer to sync up
scoreboard players set marker tick 0

# Add everyone not on team to solo team
execute if entity @a[predicate=uhcp:teams/neither] run function uhcp:start/teams

# Spreadplayers logic
execute if score teamgame status matches 0 run function uhcp:start/spreadplayers/solo
execute unless score teamgame status matches 0 run function uhcp:start/spreadplayers/teams

# Augment Selection
# scoreboard players set %tier uhcp_a_tier 1
scoreboard players set %uhcp_augmentCountdown uhcp_gameTime 900
bossbar set uhcp_augment players @a
execute as @a[gamemode=survival] run function uhcp:start/augments
