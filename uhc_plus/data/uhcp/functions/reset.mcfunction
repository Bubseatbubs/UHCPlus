# Kill entities (kill items last)
gamerule showDeathMessages false

kill @e[type=!minecraft:player,type=!#uhcp:inanimate_mobs]
execute as @e[tag=UHCP_WellEngineered] at @s run function uhcp:relics/runic_sentry/delete
execute as @e[tag=UHCP_AltarDisplay] at @s run function uhcp:titans/spawn/reset_altar
execute as @e[tag=UHCP_GraveMarker] at @s run function uhcp:titans/gigantus/graves/delete
kill @e[tag=UHCP_Summon]
kill @e[tag=UHCP_Minion]
kill @e[tag=UHCP_StoreAugment]
kill @e[tag=UHCP_SnifferControl]
kill @e[type=minecraft:experience_orb]
kill @e[type=minecraft:ender_pearl]
kill @e[type=minecraft:item]

gamerule showDeathMessages true

# Augment selection reset
execute in uhcp:main run tp @e[tag=UHCP_Lock] 0 -63 0
bossbar set uhcp:augment players

# Within dimensions
execute in minecraft:overworld run function uhcp:reset/game/overworld
execute in minecraft:the_end run function uhcp:reset/game/the_end
execute in minecraft:the_nether run function uhcp:reset/game/the_nether

# Remove force loads
execute in uhcp:hell run forceload remove all
execute in uhcp:main run forceload remove all
execute in uhcp:main run forceload add 0 0

# Reset experience
experience set @a 0 levels
experience set @a 0 points

# Reset storages
data remove storage uhcp:compass Track

# Empty teams
team empty aqua
team empty blue
team empty dark_aqua
team empty dark_blue
team empty dark_gray
team empty dark_green
team empty dark_purple
team empty dark_red
team empty gold
team empty grace_period
team empty gray
team empty green
team empty light_purple
team empty no_collision
team empty red
team empty yellow

# Reset Titans
function uhcp:reset/titans

# Reset any players in a current state
execute as @a[tag=UHCP_IsTeleporting] run function uhcp:top/cancel
execute as @a[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute as @a[tag=UHCP_IsRabbit] run function uhcp:consumables/magic_trick/reset
execute as @a[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# Tags
tag @a remove UHCP_ChoosingItem
tag @a remove UHCP_AugmentRerollSlot1
tag @a remove UHCP_AugmentRerollSlot2
tag @a remove UHCP_AugmentRerollSlot3
tag @a remove UHCP_Died
tag @a remove UHCP_MilkBucket
tag @a remove UHCP_Explode
tag @a remove UHCP_RelicTestingChamber
tag @a remove UHCP_SoulflameEmbrace
tag @a remove UHCP_Spectator
execute as @a[scores={uhcp_augment=220}] run function uhcp:augments/effects/prismatic/cyberneticdownload/reset
execute as @a[scores={uhcp_augment=25}] run function uhcp:augments/effects/gold/scavengerhunt/reset

# Reset scores
scoreboard players reset @a testkit
scoreboard players reset @a top
scoreboard players reset @a uhcp_aug_choosingAugment
scoreboard players reset @a uhcp_augment
scoreboard players reset @a uhcp_deathTime
scoreboard players reset %global uhcp_game_ID
scoreboard players reset @a uhcp_game_ID
scoreboard players reset %global uhcp_id
scoreboard players reset @a uhcp_id
scoreboard players reset %end uhcp_initStatus
scoreboard players reset %day uhcp_initStatus
scoreboard players reset %game uhcp_initStatus
scoreboard players reset @a uhcp_itemCount
scoreboard players reset %augment_countdown uhcp_game_time
scoreboard players reset %time uhcp_game_time
scoreboard players reset %time uhcp_initStatus
scoreboard players reset %time_freeze uhcp_initStatus
scoreboard players reset %lava_start uhcp_initStatus
scoreboard players reset %update_display uhcp_game_time
scoreboard players reset @a uhcp_lava_timeInterval
scoreboard players reset @a uhcp_lava_maxHeight
scoreboard players reset @a uhcp_lobby_item
scoreboard players reset @a uhcp_aug_tier
scoreboard players reset @a uhcp_aug_count
scoreboard players reset @a uhcp_team
scoreboard players reset @a uhcp_top_CD
scoreboard players reset @a uhcp_top_charge
scoreboard players reset @a uhcp_top_delay
scoreboard players set @a uhcp_ready 0

# Load border size
scoreboard players operation %border_size uhcp_settings = %border_size_retain uhcp_settings

# Load border countdown
scoreboard players operation %border_countdown uhcp_settings = %border_countdown_retain uhcp_settings

# Load border shrink speed
scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_retain uhcp_settings

# Load dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension_retain uhcp_settings

# Load PvP Grace Period countdown
scoreboard players operation %pvp uhcp_settings = %pvp_retain uhcp_settings

# Load lava scoreboard values
scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_retain uhcp_settings

# Load team values
scoreboard players operation %team_size uhcp_settings = %team_size_retain uhcp_settings
scoreboard players operation %team uhcp_settings = %team_retain uhcp_settings
scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_retain uhcp_settings

# Sidebar display
scoreboard objectives setdisplay sidebar

# Players
clear @a
execute as @a run function uhcp:reset/attributes
effect clear @a
effect give @a minecraft:instant_health 2 5 true
effect give @a minecraft:resistance infinite 5 true
effect give @a minecraft:saturation infinite 255 true
experience set @a 0 levels
experience set @a 0 points
gamemode adventure @a
team leave @a

# Lobby Menu
scoreboard players set @a uhcp_ready 0
execute as @a at @s run function uhcp:lobby/menu

# Notify players of reset
title @a subtitle {"text":"RESET","color":"gray"}
title @a title [{"text":"[","color":"white"},{"text":"U","color":"#1921FF"},{"text":"H","color":"#3D8BFF"},{"text":"C","color":"#59B7FF"},{"text":"+","color":"#85EFFF"},{"text":"]","color":"white"}]
execute as @a at @s run function uhcp:reset/notify_effects
