# Apply gamerules prior to killing entities
execute in minecraft:overworld run function uhcp:reset/kill_gamerules
execute in minecraft:the_end run function uhcp:reset/kill_gamerules
execute in minecraft:the_nether run function uhcp:reset/kill_gamerules

# Kill entities; kill items last
effect clear @e[type=!#uhcp:inanimate_mobs]
execute as @e[type=#uhcp:cube] run data modify entity @s Size set value 0
effect give @e[type=#uhcp:reset/save,tag=!UHCP_Minion] minecraft:instant_health 1 10 true

kill @e[type=!minecraft:player,type=!#uhcp:inanimate_mobs,type=!#uhcp:reset/save]
execute as @e[tag=UHCP_TurretOrigin] at @s run function uhcp:relics/runic_sentry/delete
execute as @e[tag=UHCP_AltarDisplay] at @s run function uhcp:titans/spawn/reset_altar
execute as @e[tag=UHCP_GraveMarker] at @s run function uhcp:titans/gigantus/graves/delete
kill @e[tag=UHCP_Death]
kill @e[tag=UHCP_HuntingCall]
kill @e[tag=UHCP_Minion]
kill @e[tag=UHCP_PhantomDestination]
kill @e[tag=UHCP_PhantomSaber]
kill @e[tag=UHCP_Prop]
execute as @e[tag=UHCP_SLBlock] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:nether_portal strict
kill @e[tag=UHCP_SLBlock]
kill @e[tag=UHCP_SLBTP]
kill @e[tag=UHCP_SnifferControl]
kill @e[tag=UHCP_StoreAugment]
kill @e[tag=UHCP_Summon]
kill @e[tag=UHCP_WindfallPieceDisplay]
kill @e[type=#uhcp:reset/kill]
kill @e[type=minecraft:item]

# Within dimensions
execute in minecraft:overworld run function uhcp:reset/dimensions/minecraft/overworld
execute in minecraft:the_end run function uhcp:reset/dimensions/minecraft/the_end
execute in minecraft:the_nether run function uhcp:reset/dimensions/minecraft/the_nether

# Remove force loads
execute in uhcp:hell run forceload remove all
execute in uhcp:main run function uhcp:reset/dimensions/uhcp/main

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

# Remove bossbars
execute if score %global uhcp_id matches 1.. run function uhcp:reset/bossbar
bossbar remove ssiege:blue_sniffer
bossbar remove ssiege:red_sniffer

# Reset any players in a current state
execute as @a[tag=UHCP_IsTeleporting] run function uhcp:top/cancel
execute as @a[tag=UHCP_IsPanda] run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute as @a[tag=UHCP_IsRabbit] run function uhcp:consumables/magic_trick/reset
execute as @a[tag=UHCP_IsAttackTitan] run function uhcp:consumables/titan_spinal_fluid/reset

# Tags
tag @a remove UHCP_ArrowCheck
tag @a remove UHCP_AteApple
tag @a remove UHCP_AugmentRerollSlot1
tag @a remove UHCP_AugmentRerollSlot2
tag @a remove UHCP_AugmentRerollSlot3
tag @a remove UHCP_CLFishRod
tag @a remove UHCP_CLHeal
tag @a remove UHCP_CobwebCheck
tag @a remove UHCP_Defer
tag @a remove UHCP_DiamondRough
tag @a remove UHCP_Died
tag @a remove UHCP_DisableArmorAndOffhand
tag @a remove UHCP_Explode
tag @a remove UHCP_HighTide
tag @a remove UHCP_InflictedWithGravityGlobe
tag @a remove UHCP_InflictedWithPhantomPain
tag @a remove UHCP_MilkBucket
tag @a remove UHCP_NotCLFishRod
tag @a remove UHCP_PlannedEcon
tag @a remove UHCP_RelicTestingChamber
tag @a remove UHCP_SLLock
tag @a remove UHCP_SoulflameEmbrace
tag @a remove UHCP_Spectator
tag @a remove SSIEGE_dead
tag @a remove SSIEGE_AugmentTriggered
execute as @a[scores={uhcp_augment=220}] run function uhcp:augments/effects/prismatic/cyberneticdownload/reset
function uhcp:augments/effects/gold/scavengerhunt/reset_all

# System scores
scoreboard players reset %border uhcp_game_display
scoreboard players reset %lava_height uhcp_game_display
scoreboard players reset %players uhcp_game_display
scoreboard players reset %entities uhcp_game_id
scoreboard players reset %augment_countdown uhcp_game_time
scoreboard players reset %update_display uhcp_game_time
scoreboard players reset %time uhcp_game_time
scoreboard players reset %titans uhcp_game_time
scoreboard players reset %global uhcp_id
scoreboard players reset %hunting_call uhcp_id
scoreboard players reset %players uhcp_id
scoreboard players reset %end uhcp_initStatus
scoreboard players reset %day uhcp_initStatus
scoreboard players reset %game uhcp_initStatus
scoreboard players reset %lava_start uhcp_initStatus
scoreboard players reset %lobby_firework uhcp_initStatus
scoreboard players reset %lobby_item_0 uhcp_initStatus
scoreboard players reset %lobby_item_1 uhcp_initStatus
scoreboard players reset %lobby_item_2 uhcp_initStatus
scoreboard players reset %lobby_item_3 uhcp_initStatus
scoreboard players reset %lobby_item_4 uhcp_initStatus
scoreboard players reset %lobby_item_5 uhcp_initStatus
scoreboard players reset %lobby_item_6 uhcp_initStatus
scoreboard players reset %lobby_item_7 uhcp_initStatus
scoreboard players reset %lobby_item_8 uhcp_initStatus
scoreboard players reset %lobby_speed uhcp_initStatus
scoreboard players reset %start_countdown uhcp_initStatus
scoreboard players reset %time uhcp_initStatus
scoreboard players reset %time_freeze uhcp_initStatus

# Player scores
scoreboard players reset @a testkit
scoreboard players reset @a top
scoreboard players reset @a uhcp_aug_choosing
scoreboard players reset @a uhcp_aug_count
scoreboard players reset @a uhcp_aug_tier
scoreboard players reset @a uhcp_augment
scoreboard players reset @a uhcp_death
scoreboard players reset @a uhcp_deathTime
scoreboard players reset @a uhcp_game_id
scoreboard players reset @a uhcp_game_time
scoreboard players reset @a uhcp_id
scoreboard players reset @a uhcp_itemCount
scoreboard players reset @a uhcp_lava_maxHeight
scoreboard players reset @a uhcp_lava_timeInterval
scoreboard players reset @a uhcp_lobby_item
scoreboard players reset @a uhcp_relic_count
scoreboard players reset @a uhcp_relic_sfe_time
scoreboard players reset @a uhcp_spawn_bestFriend
scoreboard players reset @a uhcp_spawn_crazyCat
scoreboard players reset @a uhcp_team
scoreboard players reset @a uhcp_top_charge
scoreboard players reset @a uhcp_top_delay
scoreboard players operation @a uhcp_top_cd = %global uhcp_game_id
scoreboard players set @a uhcp_ready 0
scoreboard players reset @a ssiege_death_timer
scoreboard players reset @a ssiege_giants
scoreboard players reset @a ssiege_reverse_bounty
scoreboard players reset @a ssiege_killstreak
scoreboard players reset @a ssiege_shards

# Necessary advancments
advancement revoke @a from uhcp:defer

# Load dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension_retain uhcp_settings

# Load PvP grace period countdown
scoreboard players operation %pvp uhcp_settings = %pvp_retain uhcp_settings

# Load lava countdown
scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_retain uhcp_settings

# Sidebar display
scoreboard objectives setdisplay sidebar

# Players
bossbar set uhcp:augment players
execute as @a run function uhcp:reset/attributes
# effects already cleared
effect give @a minecraft:instant_health 2 5 true
effect give @a minecraft:resistance infinite 5 true
effect give @a minecraft:saturation infinite 255 true
experience set @a 0 levels
experience set @a 0 points
gamemode adventure @a

# Lobby Menu
scoreboard players set @a uhcp_ready 0
scoreboard players set @a uhcp_leave 1000

function uhcp:lobby/menu/team_all
function uhcp:lobby/menu/patron_all
loot replace entity @a hotbar.2 loot uhcp:lobby_menu/skip_travel
item replace entity @a hotbar.3 with minecraft:air
item replace entity @a hotbar.4 with minecraft:air
item replace entity @a hotbar.5 with minecraft:air
loot replace entity @a hotbar.6 loot uhcp:lobby_menu/settings_display
loot replace entity @a hotbar.7 loot uhcp:lobby_menu/spectate
loot replace entity @a hotbar.8 loot uhcp:lobby_menu/not_ready

item replace entity @a container.9 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.10 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.11 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.12 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.13 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.14 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.15 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.16 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.17 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.18 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.19 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.20 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.21 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.22 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.23 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.24 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.25 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.26 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.27 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.28 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.29 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.30 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.31 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.32 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.33 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.34 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
item replace entity @a container.35 with minecraft:black_stained_glass_pane[minecraft:item_name={"text":"Menu Selection","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1

item replace entity @a armor.head with minecraft:air
item replace entity @a armor.chest with minecraft:air
item replace entity @a armor.legs with minecraft:air
item replace entity @a armor.feet with minecraft:air
item replace entity @a player.crafting.0 with minecraft:air
item replace entity @a player.crafting.1 with minecraft:air
item replace entity @a player.crafting.2 with minecraft:air
item replace entity @a player.crafting.3 with minecraft:air
item replace entity @a player.cursor with minecraft:air
item replace entity @a weapon.offhand with minecraft:air

scoreboard players reset @a uhcp_leave

# Reset gamerules
gamerule doImmediateRespawn false

# Notify players of reset
title @a subtitle {"text":"RESET","color":"gray"}
title @a title [{"text":"[","color":"white"},{"text":"U","color":"#1921FF"},{"text":"H","color":"#3D8BFF"},{"text":"C","color":"#59B7FF"},{"text":"+","color":"#85EFFF"},{"text":"]","color":"white"}]
execute as @a at @s run function uhcp:reset/notify_effects
