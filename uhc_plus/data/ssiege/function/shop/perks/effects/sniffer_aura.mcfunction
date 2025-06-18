# sniffer_aura.mcfunction
# Applies regeneration effects to team members while in their base
# Blue base: 266,189 to 286,210
# Red base: -268,-190 to -288,-211
# Unupgraded: Regen I, Level 1: Regen II, Level 2: Regen III, Level 3: Regen IIII

execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] saturation 4 0 true
execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] saturation 4 0 true

# Blue team aura effects
execute if score %blue ssiege_perk_aura matches 1 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 0 true
execute if score %blue ssiege_perk_aura matches 2 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 1 true
execute if score %blue ssiege_perk_aura matches 3 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 2 true
execute if score %blue ssiege_perk_aura matches 4 run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 3 true
execute if score %blue ssiege_perk_aura matches 5.. run execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run effect give @a[team=blue,distance=..10] regeneration 4 6 true

# Red team aura effects
execute if score %red ssiege_perk_aura matches 1 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 0 true
execute if score %red ssiege_perk_aura matches 2 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 1 true
execute if score %red ssiege_perk_aura matches 3 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 2 true
execute if score %red ssiege_perk_aura matches 4 run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 3 true
execute if score %red ssiege_perk_aura matches 5.. run execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run effect give @a[team=red,distance=..10] regeneration 4 6 true

# Spawn protection
execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ as @a[team=red,distance=..15,gamemode=survival] run damage @s 6.67 magic at ~ ~ ~
execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ as @a[team=blue,distance=..15,gamemode=survival] run damage @s 6.67 magic at ~ ~ ~
execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ run tellraw @a[team=red,distance=..15,gamemode=survival] {"text":"You are too close to the enemy spawn!","color":"red"}
execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ run tellraw @a[team=blue,distance=..15,gamemode=survival] {"text":"You are too close to the enemy spawn!","color":"red"}

# Trophy Hunter Camel Effect
execute as @a[tag=TH_Camel] run effect give @s absorption 120 0 true

execute at @e[tag=BLUE_BASE,limit=1] run execute positioned ~77 ~ ~ as @a[team=blue,distance=..15,gamemode=survival,scores={uhcp_augment=506}] at @s positioned ^ ^ ^-2 run function ssiege:augments/effects/prismatic/beastmaster
execute at @e[tag=RED_BASE,limit=1] run execute positioned ~-77 ~ ~ as @a[team=red,distance=..15,gamemode=survival,scores={uhcp_augment=506}] at @s positioned ^ ^ ^-2 run function ssiege:augments/effects/prismatic/beastmaster

# Schedules for 2 second later (40 ticks)
scoreboard players add %aura uhcp_game_time 40