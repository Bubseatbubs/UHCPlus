# Start game
scoreboard players reset %time uhcp_gameTime
scoreboard players set %uhcp_gameStart uhcp_initStatus 1
scoreboard players set %AUG_7 uhcp_gameTime 2400
scoreboard players set %AUG_15 uhcp_gameTime 2400
scoreboard players set %AUG_27 uhcp_gameTime 12000

# Add everyone not on team to solo team
tag @a remove UHCP_TeamJoin
execute as @a[predicate=uhcp:teams/neither,sort=random] run function uhcp:start/teams
tag @a remove UHCP_TeamJoin

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
