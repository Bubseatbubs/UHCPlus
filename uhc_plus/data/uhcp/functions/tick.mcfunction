# Game Start Countdown
execute if score %start_countdown uhcp_initStatus matches 1.. run function uhcp:lobby/countdown

# Manage players
execute as @a[tag=!UHCP_Player] run function uhcp:new
execute as @a[scores={uhcp_leave=1..}] run function uhcp:left

# After time starts moving
execute if score %time uhcp_initStatus matches 1 run function uhcp:time

# Display time
execute if score %game uhcp_initStatus matches 1 run function uhcp:timer/update_display

# Lava
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:lava/run

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:compass/player_compass/hand,gamemode=survival] run function uhcp:compass/determine
execute unless score %compass_time uhcp_itemCount matches ..0 run scoreboard players remove %compass_time uhcp_itemCount 1

# Settings menu
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
function uhcp:settings/tick

# Top Command
execute if entity @a[scores={top=1..}] run function uhcp:top/validate
execute as @a if score @s uhcp_top_delay matches 1.. at @s run function uhcp:top/finish
scoreboard players remove @a[scores={uhcp_top_CD=1..}] uhcp_top_CD 1
execute as @a[tag=UHCP_IsTeleporting] at @s unless entity @e[type=minecraft:marker,tag=UHCP_topCheck,distance=..1] run function uhcp:top/cancel

# Top Chargeup
execute as @a[tag=UHCP_IsTeleporting] at @s run function uhcp:top/updatecharge
execute if entity @a[scores={top=1..}] run function uhcp:top/validate

# On Player Death
execute as @a[scores={uhcp_death=1..}] at @s run function uhcp:kill/death

# Ate Golden Apple Effect
execute as @a[tag=UHCP_AteApple,gamemode=survival] run function uhcp:entity/items/ate_golden_apple/update

# Augments
scoreboard players enable @a[tag=UHCP_CDSelectUpgrade] upgrade
execute if entity @e[tag=UHCP_SLBlock] run function uhcp:augments/effects/prismatic/sololeveling/interact/revert
execute as @a[scores={uhcp_lava_timeInterval=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lava_maxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return
execute as @a[scores={upgrade=1..3}] at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/select

# Augment Countdown
execute if score %augment_countdown uhcp_game_time matches 1.. run function uhcp:augments/countdown

# Lobby
execute unless score %game uhcp_initStatus matches 1 run function uhcp:lobby
execute as @a if score @s uhcp_lobby_setItem = @s uhcp_lobby_setItem run function uhcp:lobby/item

# Update Summoned Entities
execute as @e[tag=UHCP_Summon] at @s run function uhcp:entity/update

# Update Titans
execute as @a at @s if entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/update
execute as @a[tag=UHCP_TitanHealthVisible] at @s unless entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/hide
execute as @e[type=!player,tag=UHCP_Titan] at @s run function uhcp:titans/update

# Consumables
execute as @a[tag=UHCP_ListeningToPigstep] at @s run function uhcp:consumables/groovy_disc/update
execute as @a[tag=UHCP_IsRabbit] at @s run function uhcp:consumables/magic_trick/update
execute as @a[tag=UHCP_IsAttackTitan] at @s run function uhcp:consumables/titan_spinal_fluid/update

# Relics
execute as @a[tag=UHCP_SoulflameEmbrace] at @s run function uhcp:relics/soulflames_embrace/update_player
execute as @a[tag=UHCP_InflictedWithGravityGlobe] at @s run function uhcp:relics/gravity_globe/update
execute as @e[tag=UHCP_InflictedWithPhantomPain] at @s run function uhcp:relics/soulflames_embrace/update_phantom_pains
execute as @e[predicate=uhcp:relics/smooth_getaway/hitbox_hurt] at @s run function uhcp:relics/smooth_getaway/hurt
execute as @e[predicate=uhcp:relics/runic_sentry/hitbox_hurt] at @s run function uhcp:relics/runic_sentry/hurt

# Disable Ender Pearl Damage
execute as @e[type=minecraft:ender_pearl] at @s run function uhcp:entity/ender_pearl

# Instant pickup items
execute as @e[tag=!UHCP_ItemPickup,predicate=uhcp:items/instant_pickup] run function uhcp:entity/items/instant_pickup

# Death time
execute if entity @a[tag=UHCP_Died] run function uhcp:kill/death/time

# Item use timer
scoreboard players remove @a[scores={uhcp_itemCount=1..}] uhcp_itemCount 1
