# Manage players
execute as @a[tag=!UHCP_Player] run function uhcp:new
execute as @a[scores={uhcp_leave=1..}] run function uhcp:left

# Game Start Countdown
execute if score %start_countdown uhcp_initStatus matches 1.. run function uhcp:lobby/countdown

# On Player Death
execute as @a[scores={uhcp_death=1..}] at @s run function uhcp:kill/death
execute if entity @a[tag=UHCP_Died] run function uhcp:kill/death/time

# After time starts moving
execute if score %time uhcp_initStatus matches 1 run function uhcp:time

# Display time
execute if score %game uhcp_initStatus matches 1 run function uhcp:timer/update_display

# Lava
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:lava/run

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
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

# Augment routines (that should be in tick function)
execute if entity @e[tag=UHCP_SLBlock] run function uhcp:augments/effects/prismatic/sololeveling/interact/revert

# Augment Countdown
execute if score %augment_countdown uhcp_game_time matches 1.. run function uhcp:augments/countdown

# Lobby
execute unless score %game uhcp_initStatus matches 1 run function uhcp:lobby
execute as @a if score @s uhcp_lobby_setItem = @s uhcp_lobby_setItem run function uhcp:lobby/item

# Update Summoned Entities
execute as @e[tag=UHCP_Summon] at @s run function uhcp:entity/update

# Relics
execute as @a[tag=UHCP_SoulflameEmbrace] at @s run function uhcp:relics/soulflames_embrace/update_player
execute as @a[tag=UHCP_InflictedWithGravityGlobe] at @s run function uhcp:relics/gravity_globe/update
execute as @e[tag=UHCP_InflictedWithPhantomPain] at @s run function uhcp:relics/soulflames_embrace/update_phantom_pains
execute as @e[predicate=uhcp:relics/smooth_getaway/hitbox_hurt] at @s run function uhcp:relics/smooth_getaway/hurt
execute as @e[predicate=uhcp:relics/runic_sentry/hitbox_hurt] at @s run function uhcp:relics/runic_sentry/hurt

# Instant pickup items
execute as @e[tag=!UHCP_ItemPickup,predicate=uhcp:items/instant_pickup] run function uhcp:entity/items/instant_pickup

# Item use timer
scoreboard players remove @a[scores={uhcp_itemCount=1..}] uhcp_itemCount 1
