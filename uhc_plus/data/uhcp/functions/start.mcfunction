# Start game
scoreboard players reset %time uhcp_gameTime
scoreboard players set %uhcp_gameStart uhcp_initStatus 1
scoreboard players set %AUG_7 uhcp_gameTime 2400
scoreboard players set %AUG_15 uhcp_gameTime 2400
scoreboard players set %AUG_27 uhcp_gameTime 12000

# Add everyone not on team to solo team
execute if entity @a[predicate=uhcp:teams/neither] run function uhcp:start/teams

# Assign team scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Spreadplayers logic
execute if score teamgame status matches 0 run function uhcp:start/spreadplayers/solo
execute if score teamgame status matches 1 run function uhcp:start/spreadplayers/teams

# Augment Selection
scoreboard players set %tier uhcp_a_tier 1
scoreboard players set %uhcp_augmentCountdown uhcp_gameTime 900
bossbar set uhcp_augment players @a
execute as @a[gamemode=survival] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}
execute as @a[gamemode=survival] run effect give @s resistance 45 4 true
execute as @a[gamemode=survival] run effect give @s mining_fatigue 45 255 true
execute as @a[gamemode=survival] run effect give @s weakness 45 4 true
execute as @a[gamemode=survival] run function uhcp:augments/optionselect
execute as @a[gamemode=survival] run gamemode adventure
