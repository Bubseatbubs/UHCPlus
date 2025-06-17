# Phase 2 of the start function, teleporting players to starting positions and beginning augment selection

# Display statistics
scoreboard players display numberformat %time uhcp_game_display fixed {"text":"0:00"}
function ssiege:start/encounters/set_encounter_name
scoreboard objectives setdisplay sidebar uhcp_game_display

# Clean up the encounter entity
kill @e[tag=encounter_entity]

# Move players away from lobby
execute as @a at @s in minecraft:overworld run tp @s ~ ~1000 ~

# Remove lobby
execute in minecraft:overworld run function uhcp:lobby/remove

# Place the base structures on the map and spawn players in
function ssiege:bases/init

# Reset time augs
scoreboard players set @a uhcp_game_time -1

# Teleport spectators
tp @a[tag=UHCP_Spectator] 0 150 0
execute as @a[tag=UHCP_Spectator] run tp @s @r[tag=!UHCP_Spectator]

# Augment selection setup
kill @e[tag=UHCP_StoreAugment]
kill @e[type=minecraft:item,predicate=uhcp:dimensions/uhcp/main]
tag @a remove UHCP_ChoosingItem
tag @a remove UHCP_AugmentRerollSlot1
tag @a remove UHCP_AugmentRerollSlot2
tag @a remove UHCP_AugmentRerollSlot3

# Augment tier
execute if score %random uhcp_aug_tier matches 1 store result score %tier uhcp_aug_tier run function ssiege:start/randomize_aug_tier

# Effects
effect clear @a
effect give @a[tag=!UHCP_Spectator] minecraft:regeneration 10 5 true
function uhcp:start/night_vision

# Reset attribute modifiers
execute as @a run function uhcp:reset/attributes

# Reset experience
experience set @a 0 levels
experience set @a 0 points

# Assign player IDs
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/id/player
execute as @a[tag=UHCP_Spectator] run function uhcp:start/id/spectator

# Solo leveling upgrades
tag @a remove UHCP_SLUpg
tag @a remove UHCP_SLAxe
tag @a remove UHCP_SLBoots
tag @a remove UHCP_SLBow
tag @a remove UHCP_SLChest
tag @a remove UHCP_SLHelm
tag @a remove UHCP_SLHoe
tag @a remove UHCP_SLLegs
tag @a remove UHCP_SLPick
tag @a remove UHCP_SLShovel
tag @a remove UHCP_SLSword
function uhcp:augments/effects/prismatic/sololeveling/prepare

# Clear ender chests
item replace entity @a enderchest.0 with minecraft:air
item replace entity @a enderchest.1 with minecraft:air
item replace entity @a enderchest.2 with minecraft:air
item replace entity @a enderchest.3 with minecraft:air
item replace entity @a enderchest.4 with minecraft:air
item replace entity @a enderchest.5 with minecraft:air
item replace entity @a enderchest.6 with minecraft:air
item replace entity @a enderchest.7 with minecraft:air
item replace entity @a enderchest.8 with minecraft:air
item replace entity @a enderchest.9 with minecraft:air
item replace entity @a enderchest.10 with minecraft:air
item replace entity @a enderchest.11 with minecraft:air
item replace entity @a enderchest.12 with minecraft:air
item replace entity @a enderchest.13 with minecraft:air
item replace entity @a enderchest.14 with minecraft:air
item replace entity @a enderchest.15 with minecraft:air
item replace entity @a enderchest.16 with minecraft:air
item replace entity @a enderchest.17 with minecraft:air
item replace entity @a enderchest.18 with minecraft:air
item replace entity @a enderchest.19 with minecraft:air
item replace entity @a enderchest.20 with minecraft:air
item replace entity @a enderchest.21 with minecraft:air
item replace entity @a enderchest.22 with minecraft:air
item replace entity @a enderchest.23 with minecraft:air
item replace entity @a enderchest.24 with minecraft:air
item replace entity @a enderchest.25 with minecraft:air
item replace entity @a enderchest.26 with minecraft:air

# Encounter Modifications
# superiority encounter changes augment to Prismatic
execute if score %encounter ssiege_current_encounter matches 3 run scoreboard players set %tier uhcp_aug_tier 2

# TODO: Aeodine sets everyone's augment to Solo Leveling

# Borrowing uhcp's Augment Selection infrastructure, pulls from different pool of augments later on
function uhcp:start/augments

# Spectators
gamemode spectator @a[tag=UHCP_Spectator]
tellraw @a[tag=UHCP_Spectator] [{"text":"You are spectating the current match.","color":"gray"}]
tag @a remove UHCP_Spectator
