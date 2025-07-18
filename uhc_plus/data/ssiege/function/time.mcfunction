# Sniffer Siege time based events

# Stop running time after game end
execute if score %time_freeze uhcp_initStatus matches 1 run return fail

# Check for end of game
function ssiege:end/check

# Game time
scoreboard players add %time uhcp_game_time 1

# Inhibitor Invulnerability
execute if score %time uhcp_game_time matches ..17980 run effect give @e[tag=SSIEGE_inhib] resistance 1 4 false
execute if score %time uhcp_game_time matches 18000 run tellraw @a "The Inhibitors are no longer invulnerable!"

# Inhibitor/Turret update
function ssiege:bases/inhibitors/update

# Deferred inventory management
execute if entity @a[tag=UHCP_Defer] run function uhcp:defer

# Player attack cooldown (for Sniffer hitbox system)
execute as @a[scores={ssiege_attack_cooldown=1..}] run scoreboard players remove @s ssiege_attack_cooldown 1

# Update damage displays
execute as @e[type=text_display,tag=SSIEGE_damage_display] at @s run function ssiege:bases/sniffers/hitboxes/damage_display/update

# Timers
scoreboard players remove @a[scores={uhcp_timer=0..}] uhcp_timer 1
scoreboard players remove @e[tag=UHCP_HuntingCall,scores={uhcp_itemCount=1..}] uhcp_itemCount 1

# Clear lava and water in bases
execute if score %time uhcp_game_time >= %fill_liquid_timer uhcp_game_time run function ssiege:bases/clear_liquids

# Augment notifications
execute if score %time uhcp_game_time matches ..45000 run function ssiege:augments/notifications

# Timed augment effects
execute as @a[scores={uhcp_game_time=0..},gamemode=survival] if score %time uhcp_game_time >= @s uhcp_game_time run function ssiege:augments/effects/timed

# Augments that need to run every tick
function ssiege:augments/tick_augments

# Announce Augments
execute as @a[scores={augments=1..}] run function ssiege:augments/announce

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:player_compass/hand,gamemode=survival] run function uhcp:compass/determine
scoreboard players remove %compass_time uhcp_itemCount 1

# Recall
scoreboard players enable @a recall
execute as @a[scores={recall=1..}] as @s run function ssiege:recall/init
scoreboard players reset @a[scores={recall=1..}] recall
execute as @a[scores={ssiege_recall_charge=1..}] as @s run function ssiege:recall/countdown
execute as @a[scores={ssiege_recall_charge=1..}] run function ssiege:recall/detect_movement
execute as @a[scores={ssiege_recall_charge=0}] run function ssiege:recall/finish

# Update Titans
execute as @a at @s if entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/update
execute as @a[tag=UHCP_TitanHealthVisible] at @s unless entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/hide
execute as @e[type=!minecraft:player,tag=UHCP_Titan] at @s run function ssiege:titans/update

# Update Entity Teams
execute as @e[type=!player,scores={uhcp_team=2..}] run function ssiege:entity/join_team

# Update Sniffer Bossbar
function ssiege:bossbar/update

# Update Sniffer Last Stand
execute as @e[type=sniffer,tag=SSIEGE_sniffer] run function ssiege:bases/sniffers/last_stand/update

# Test kit
# TODO: Make a Sniffer Siege testkit
#execute as @a[scores={testkit=1..}] run function uhcp:testkit/verify

# Consumables
execute as @a[scores={uhcp_groovy=1}] at @s run particle minecraft:note ~ ~ ~ 1.5 1.5 1.5 0.001 2 normal @s
execute as @a[tag=UHCP_IsRabbit] at @s run function uhcp:consumables/magic_trick/update
execute as @a[tag=UHCP_IsAttackTitan] at @s run function uhcp:consumables/titan_spinal_fluid/update

# Pretty sure this shouldn't actually be here but oops i gave up - rain
execute as @e[type=snowball] run function ssiege:consumables/bridge_ball/update
function ssiege:consumables/bridge_ball/update_trail

# Update speed of golden apples - temp solution while I work on how to collate stuff
execute as @a[gamemode=survival] at @s as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..2] run item modify entity @s contents ssiege:make_medium

# Ate golden apple effect
execute as @a[tag=UHCP_AteApple,gamemode=survival] run function uhcp:entity/items/ate_golden_apple/update

# Milk bucket
execute as @a[tag=UHCP_MilkBucket] run function uhcp:milk_bucket/apply

# Experience orbs from mining auto-smelted metals
execute if score %auto_smelt uhcp_settings matches 1 run function uhcp:mine/experience

# Used ender pearl
execute if score %ender_pearl uhcp_settings matches 1 as @e[type=minecraft:ender_pearl] at @s run function uhcp:entity/ender_pearl

# Fake apples
item replace entity @e[type=minecraft:item,predicate=uhcp:apple_head] contents with minecraft:apple 1
item replace entity @e[type=minecraft:item,predicate=uhcp:golden_apple_head] contents with minecraft:golden_apple 1

# Check apples
execute if score %time uhcp_game_time >= %apple uhcp_game_time run function ssiege:bases/apples/applecursion

# Kill stupid decorative inventory clutters
# execute as @e[tag=UHCP_Titan] at @s run kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:leaf_litter"}}]
# execute as @e[tag=UHCP_Titan] at @s run kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:pink_petals"}}]

# Enable triggers
scoreboard players enable @a augments
scoreboard players enable @a[gamemode=survival] top
scoreboard players enable @a[gamemode=survival] testkit

# Calculate player bounties
execute as @a run function ssiege:death/calculate_shards_dropped

# Handle reverse bounties
scoreboard players remove @a[scores={ssiege_reverse_bounty=1..}] ssiege_reverse_bounty 1
scoreboard players set @a[scores={ssiege_reverse_bounty=..-1}] ssiege_reverse_bounty 0

# Handle death timers
execute as @a[tag=SSIEGE_dead,gamemode=spectator] run function ssiege:death/update

# Shop Interactions
execute as @a[scores={shop=1..}] at @s run function ssiege:shop/update
scoreboard players enable @a shop

# Blue Runesmith
execute unless score %blue ssiege_unlocked_runesmith matches 1 at @e[type=wandering_trader,tag=SSIEGE_BLUE_RUNESMITH] if block ~ ~ ~-1 minecraft:anvil run function ssiege:shop/runes/unlock_blue_runesmith

# Red Runesmith
execute unless score %red ssiege_unlocked_runesmith matches 1 at @e[type=wandering_trader,tag=SSIEGE_RED_RUNESMITH] if block ~ ~ ~1 minecraft:anvil run function ssiege:shop/runes/unlock_red_runesmith

# Sniffer Sonar Perk
execute if score %time uhcp_game_time >= %sonar uhcp_game_time run function ssiege:shop/perks/effects/sniffer_sonar

# Homeguard Perk
execute if score %time uhcp_game_time >= %homeguard uhcp_game_time run function ssiege:shop/perks/effects/homeguard

# Regen Perk
execute if score %red ssiege_perk_regen matches 1.. if score %time uhcp_game_time >= %red_regen uhcp_game_time run function ssiege:shop/perks/effects/red_regen
execute if score %blue ssiege_perk_regen matches 1.. if score %time uhcp_game_time >= %blue_regen uhcp_game_time run function ssiege:shop/perks/effects/blue_regen

# Sniffer Aura Perk
execute if score %time uhcp_game_time >= %aura uhcp_game_time run function ssiege:shop/perks/effects/sniffer_aura

# Titan Spawning
execute if score %time uhcp_game_time = %titans uhcp_game_time run function ssiege:titans/timed

# Titan's Might
execute if score %time uhcp_game_time >= %titan_might uhcp_game_time run execute as @a[scores={ssiege_buff_titanslayer = 1..}] at @s run function ssiege:titans/titans_might

# Time-Based Encounters
execute if score %time uhcp_game_time >= %encounter_time uhcp_game_time run function ssiege:start/encounters/effects/timed

# Giants - must be run as a player for whatever reason
execute if score %time uhcp_game_time >= %giant_timer ssiege_giants in minecraft:overworld as @p run function ssiege:giants/init_wave