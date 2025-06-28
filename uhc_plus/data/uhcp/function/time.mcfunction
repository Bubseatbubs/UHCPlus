# End game
execute unless score %end uhcp_initStatus matches 1 if entity @a run function uhcp:end

# Game time
scoreboard players add %time uhcp_game_time 1

# Deferred management (mainly inventory)
execute if entity @a[tag=UHCP_Defer] run function uhcp:defer

# World border
execute unless score %border_countdown uhcp_game_time matches ..-1 run function uhcp:border

# Lava countdown
execute unless score %lava_countdown uhcp_settings matches ..-1 run function uhcp:lava/countdown

# Close dimensions
execute if score %dimension uhcp_settings matches 0..24000 run function uhcp:dimensions/notify
execute if score %dimension uhcp_settings matches ..0 run function uhcp:dimensions/close
execute unless score %dimension uhcp_settings matches ..-1 run scoreboard players remove %dimension uhcp_settings 1

# Eternal day
execute if score %time uhcp_game_time matches 24000..24500 in minecraft:overworld run function uhcp:day/run

# Grace period end
execute unless score %pvp uhcp_settings matches ..-1 run function uhcp:pvp/countdown

# Timers
scoreboard players remove @a[scores={uhcp_timer=0..}] uhcp_timer 1
scoreboard players remove @e[tag=UHCP_HuntingCall,scores={uhcp_itemCount=1..}] uhcp_itemCount 1

# Augment notifications
execute if score %time uhcp_game_time matches 3600..40800 run function uhcp:augments/notifications

# Timed augment effects
execute as @a[scores={uhcp_game_time=0..},gamemode=survival] if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed

# AFK augment
execute if score %time uhcp_game_time matches ..3599 as @a[scores={uhcp_augment=101},gamemode=survival] at @s run ride @s mount @n[tag=UHCP_AFKLock,distance=..15]

# Prop Hunt
execute if entity @a[predicate=uhcp:augments/prop_hunt/player] run function uhcp:augments/effects/silver/prophunt/tick

# Solo leveling
execute as @a[scores={uhcp_lava_timeInterval=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound
execute as @a[scores={uhcp_lava_maxHeight=0..}] run function uhcp:augments/effects/prismatic/sololeveling/interact/return

# Cybernetic download
execute as @a[scores={upgrade=1..3}] at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/select
execute as @a[tag=UHCP_CDSelectUpgrade] at @s run function uhcp:augments/effects/prismatic/cyberneticdownload/update_menu
scoreboard players enable @a[tag=UHCP_CDSelectUpgrade] upgrade

# Announce Augments
execute as @a[scores={augments=1..}] run function uhcp:augments/announce

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:player_compass/hand,gamemode=survival] run function uhcp:compass/determine
scoreboard players remove %compass_time uhcp_itemCount 1

# Top Command
execute if entity @a[scores={top=1..}] run function uhcp:top/validate
execute as @a[scores={uhcp_top_delay=1..}] at @s run function uhcp:top/finish
scoreboard players remove @a[scores={uhcp_top_cd=1..}] uhcp_top_cd 1
execute as @a[tag=UHCP_IsTeleporting] at @s run function uhcp:top/updatecharge

# Timed Titan events
execute if score %titans uhcp_game_time = %time uhcp_game_time run function uhcp:titans/timed

# Update Titans
execute as @a at @s if entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/update
execute as @a[tag=UHCP_TitanHealthVisible] at @s unless entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/hide
execute as @e[type=!minecraft:player,tag=UHCP_Titan] at @s run function uhcp:titans/update

# Test kit
execute as @a[scores={testkit=1..}] run function uhcp:testkit/verify

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
