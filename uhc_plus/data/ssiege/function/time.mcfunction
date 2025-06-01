# Sniffer Siege time based events

# TODO: Write Sniffer Siege End game check/function
# execute unless score %end uhcp_initStatus matches 1 if entity @a run function uhcp:end

# Game time
scoreboard players add %time uhcp_game_time 1

# Arrow limit
execute as @a[tag=UHCP_ArrowCheck] at @s run function uhcp:arrow_limit/check
tag @a remove UHCP_ArrowCheck

# Eternal day
execute if score %time uhcp_game_time matches 24000..24500 in minecraft:overworld run function uhcp:day/run

# Timers
scoreboard players remove @a[scores={uhcp_timer=0..}] uhcp_timer 1
scoreboard players remove @e[tag=UHCP_HuntingCall,scores={uhcp_itemCount=1..}] uhcp_itemCount 1

# Clear lava and water in bases
scoreboard players add %fill_liquid_timer uhcp_game_time 1
execute if score %fill_liquid_timer uhcp_game_time matches 10.. run function ssiege:bases/clear_liquids
execute if score %fill_liquid_timer uhcp_game_time matches 10.. run scoreboard players set %fill_liquid_timer uhcp_game_time 0

# Augment notifications
execute if score %time uhcp_game_time matches ..45000 run function ssiege:augments/notifications

# Timed augment effects
execute as @a[scores={uhcp_game_time=0..},gamemode=survival] if score %time uhcp_game_time >= @s uhcp_game_time run function ssiege:augments/effects/timed

# AFK augment
execute if score %time uhcp_game_time matches ..3599 as @a[scores={uhcp_augment=1},gamemode=survival] at @s run ride @s mount @n[tag=UHCP_AFKLock,distance=..15]

# Prop hunt
execute as @a[scores={uhcp_augment=49}] at @s run function uhcp:augments/effects/silver/prophunt/status

# Solo leveling
execute as @a[scores={uhcp_lava_timeInterval=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lava_maxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return

# Cybernetic download
execute as @a[scores={upgrade=1..3}] at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/select
execute as @a[tag=UHCP_CDSelectUpgrade] at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/update_menu
scoreboard players enable @a[tag=UHCP_CDSelectUpgrade] upgrade

# Babysitting
function ssiege:augments/effects/gold/babysitting/sniffcd

# Bottled Knowledge
execute as @a[scores={uhcp_augment=6}] run function ssiege:augments/effects/gold/bottledknowledge/levelcheck

# Cram Session
execute as @a[scores={uhcp_augment=11}] run function ssiege:augments/effects/gold/cramsession/levelcheck

# Announce Augments
execute as @a[scores={augments=1..}] run function uhcp:augments/announce

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:player_compass/hand,gamemode=survival] run function uhcp:compass/determine
scoreboard players remove %compass_time uhcp_itemCount 1

# TODO: Recall command

# Timed Titan events
execute if score %titans uhcp_game_time = %time uhcp_game_time run function ssiege:titans/timed

# Update Titans
execute as @a at @s if entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/update
execute as @a[tag=UHCP_TitanHealthVisible] at @s unless entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/hide
execute as @e[type=!minecraft:player,tag=UHCP_Titan] at @s run function uhcp:titans/update

# Test kit
# TODO: Make a Sniffer Siege testkit
#execute as @a[scores={testkit=1..}] run function uhcp:testkit/verify

# Consumables
execute as @a[scores={uhcp_groovy=1}] at @s run particle minecraft:note ~ ~ ~ 1.5 1.5 1.5 0.001 2 normal @s
execute as @a[tag=UHCP_IsRabbit] at @s run function uhcp:consumables/magic_trick/update
execute as @a[tag=UHCP_IsAttackTitan] at @s run function uhcp:consumables/titan_spinal_fluid/update

# Ate golden apple effect
execute as @a[tag=UHCP_AteApple,gamemode=survival] run function uhcp:entity/items/ate_golden_apple/update

# Milk bucket
execute as @a[tag=UHCP_MilkBucket] run function uhcp:milk_bucket/apply

# Experience orbs from mining auto-smelted metals
execute if score %auto_smelt uhcp_settings matches 1 run function uhcp:mine/experience

# Disable ender pearl damage
execute if score %ender_pearl uhcp_settings matches 1 as @e[type=minecraft:ender_pearl] at @s run function uhcp:entity/ender_pearl

# Titan Loot
execute as @e[predicate=uhcp:titans/titan_loot] at @s run function uhcp:titans/loot

# Fake apples
item replace entity @e[type=minecraft:item,predicate=uhcp:apple_head] contents with minecraft:apple 1
item replace entity @e[type=minecraft:item,predicate=uhcp:golden_apple_head] contents with minecraft:golden_apple 1

# Enable triggers
scoreboard players enable @a augments
scoreboard players enable @a[gamemode=survival] top
scoreboard players enable @a[gamemode=survival] testkit

# Calculate player bounties
execute as @a run function ssiege:kill/soul_shard/calculate_shards_dropped

# Handle reverse bounties
scoreboard players remove @a[scores={ssiege_reverse_bounty=1..}] ssiege_reverse_bounty 1
scoreboard players set @a[scores={ssiege_reverse_bounty=..-1}] ssiege_reverse_bounty 0

# Handle death timers
function ssiege:kill/advance_timers

# Force dead players to spectate their nearest teammate
execute as @a[tag=SSIEGE_dead,team=blue] run tp @s @p[team=blue,gamemode=survival]
execute as @a[tag=SSIEGE_dead,team=red] run tp @s @p[team=red,gamemode=survival]
execute as @a[tag=SSIEGE_dead] run spectate @p[gamemode=survival]

# Augment-based time events
execute as @a[scores={uhcp_game_time=0..},gamemode=survival] if score %time uhcp_game_time >= @s uhcp_game_time run function ssiege:augments/effects/timed

# Shop Interactions
# Blue Runesmith
execute unless score %blue ssiege_unlocked_runesmith matches 1 at @e[type=wandering_trader,tag=SSIEGE_BLUE_RUNESMITH] if block ~ ~ ~-1 minecraft:anvil run function ssiege:shop/runes/unlock_blue_runesmith

# Red Runesmith
execute unless score %red ssiege_unlocked_runesmith matches 1 at @e[type=wandering_trader,tag=SSIEGE_RED_RUNESMITH] if block ~ ~ ~1 minecraft:anvil run function ssiege:shop/runes/unlock_red_runesmith

# Check when players leave shopping area
execute as @a unless entity @n[tag=SSIEGE_SHOPKEEPER,distance=..32] run scoreboard players set @s ssiege_currently_shopping 0

# Sniffer Sonar Perk
execute if score %time uhcp_game_time >= %sonar uhcp_game_time run function ssiege:shop/perks/effects/sniffer_sonar

# Regen Perk
execute if score %red ssiege_perk_regen matches 2.. if score %time uhcp_game_time >= %red_regen uhcp_game_time run function ssiege:shop/perks/effects/red_regen
execute if score %blue ssiege_perk_regen matches 2.. if score %time uhcp_game_time >= %blue_regen uhcp_game_time run function ssiege:shop/perks/effects/blue_regen

# TODO: Titan spawning logic

# TODO: Time-based Encounters logic

# Giants
execute if score %time uhcp_game_time matches 18000 in minecraft:overworld run scoreboard players set %giant_timer ssiege_giants 4200
execute if score %giant_timer ssiege_giants matches 4200.. run function ssiege:giants/init_wave
execute if score %giant_timer ssiege_giants matches 0.. run scoreboard players add %giant_timer ssiege_giants 1