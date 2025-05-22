# Manage players
execute as @a[tag=!UHCP_Player] run function uhcp:new
execute as @a[scores={uhcp_leave=1..}] run function uhcp:left

# On player death
execute as @a[scores={uhcp_death=1..}] at @s run function uhcp:kill/death
execute if entity @a[tag=UHCP_Died] run function uhcp:kill/death/time

# Settings menu
execute as @a[scores={uhcp_settings=0..}] at @s run function uhcp:settings/change
execute as @a[scores={settings=1..}] run function uhcp:settings/pages/main
execute as @a[scores={settings_player=1..}] run function uhcp:settings/pages/player
execute as @a[scores={settings_augments=1..}] run function uhcp:settings/pages/augments
execute as @a[scores={settings_other=1..}] run function uhcp:settings/pages/other
execute as @a[scores={settings_lava=1..}] run function uhcp:settings/pages/lava/check
execute as @a[scores={settings_border=1..}] run function uhcp:settings/pages/border
execute as @a[scores={settings_team=1..}] run function uhcp:settings/pages/team
scoreboard players enable @a settings
scoreboard players enable @a settings_player
scoreboard players enable @a settings_augments
scoreboard players enable @a settings_other
scoreboard players enable @a settings_lava
scoreboard players enable @a settings_border
scoreboard players enable @a settings_team

# After time starts moving
execute if score %time uhcp_initStatus matches 1 run function uhcp:time

# Augment countdown
execute if score %augment_countdown uhcp_game_time matches 1.. run function uhcp:augments/countdown

# Game statistics display
execute if score %game uhcp_initStatus matches 1 run function uhcp:display/update

# Lava
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:lava/run

# Augment routines (that should be in tick function)
execute if entity @e[tag=UHCP_SLBlock] run function uhcp:augments/effects/prismatic/sololeveling/interact/revert
execute as @e[type=minecraft:drowned,tag=!UHCP_FishingRod] run function uhcp:entity/fishing_rod

# Lobby
execute unless score %game uhcp_initStatus matches 1 run function uhcp:lobby

# Update summoned entities (does not execute as every entity to be more efficient with more entities; still inefficient)
execute if entity @e[tag=UHCP_Summon] run function uhcp:entity/update

# Relics
execute as @a[tag=UHCP_SoulflameEmbrace] at @s run function uhcp:relics/soulflames_embrace/update_player
execute as @a[tag=UHCP_InflictedWithGravityGlobe] at @s run function uhcp:relics/gravity_globe/update
execute as @e[tag=UHCP_InflictedWithPhantomPain] at @s run function uhcp:relics/soulflames_embrace/update_phantom_pains
execute as @a[tag=UHCP_SmoothGetaway,predicate=uhcp:relics/smooth_getaway_invisibility] at @s run function uhcp:relics/smooth_getaway/finish
execute as @e[type=minecraft:giant,tag=UHCP_Hitbox,predicate=uhcp:hitbox_hurt] at @s run function uhcp:relics/smooth_getaway/hurt
execute as @e[type=minecraft:giant,tag=UHCP_TurretHitbox,predicate=uhcp:hitbox_hurt] at @s run function uhcp:relics/runic_sentry/hurt

# Instant pickup items
execute as @e[tag=!UHCP_ItemPickup,predicate=uhcp:items/instant_pickup] run function uhcp:entity/items/instant_pickup

# Item use timer
scoreboard players remove @a[scores={uhcp_itemCount=1..}] uhcp_itemCount 1
