# End game
execute unless score %end uhcp_initStatus matches 1 if entity @a run function uhcp:end

# Game time
scoreboard players add %time uhcp_game_time 1

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

# Augment timer
function uhcp:timer/timer

# Announce Augments
execute as @a[scores={augments=1..}] run function uhcp:augments/announce

# Player compass
execute unless score %compass_time uhcp_itemCount matches 1.. if entity @a[predicate=uhcp:compass/player_compass/hand,gamemode=survival] run function uhcp:compass/determine
execute unless score %compass_time uhcp_itemCount matches ..0 run scoreboard players remove %compass_time uhcp_itemCount 1

# Top Command
execute if entity @a[scores={top=1..}] run function uhcp:top/validate
execute as @a[scores={uhcp_top_delay=1..}] at @s run function uhcp:top/finish
scoreboard players remove @a[scores={uhcp_top_CD=1..}] uhcp_top_CD 1
execute as @a[tag=UHCP_IsTeleporting] at @s unless entity @e[type=minecraft:marker,tag=UHCP_topCheck,distance=..1] run function uhcp:top/cancel
execute as @a[tag=UHCP_IsTeleporting] at @s run function uhcp:top/updatecharge

# Update Titans
execute as @a at @s if entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/update
execute as @a[tag=UHCP_TitanHealthVisible] at @s unless entity @e[tag=UHCP_Titan,distance=..32] run function uhcp:titans/bossbar/hide
execute as @e[type=!minecraft:player,tag=UHCP_Titan] at @s run function uhcp:titans/update

# Testkit
execute as @a[gamemode=survival] if score @s testkit matches 1.. run function uhcp:testkit/verify
execute as @a[scores={uhcp_testkit=1}] run function uhcp:testkit/kit

# Consumables
execute as @a[tag=UHCP_ListeningToPigstep] at @s run function uhcp:consumables/groovy_disc/update
execute as @a[tag=UHCP_IsRabbit] at @s run function uhcp:consumables/magic_trick/update
execute as @a[tag=UHCP_IsAttackTitan] at @s run function uhcp:consumables/titan_spinal_fluid/update

# Ate Golden Apple Effect
execute as @a[tag=UHCP_AteApple,gamemode=survival] run function uhcp:entity/items/ate_golden_apple/update

# Milk bucket
execute as @a[tag=UHCP_MilkBucket] run function uhcp:milk_bucket/apply

# Experience orbs for mining metals
execute as @a[scores={uhcp_mine_ancientDebris=1..},gamemode=survival] run function uhcp:mine/ancient_debris
execute as @a[scores={uhcp_mine_copperOre=1..},gamemode=survival] run function uhcp:mine/copper_ore
execute as @a[scores={uhcp_mine_dCopperOre=1..},gamemode=survival] run function uhcp:mine/deepslate_copper_ore
execute as @a[scores={uhcp_mine_dGoldOre=1..},gamemode=survival] run function uhcp:mine/deepslate_gold_ore
execute as @a[scores={uhcp_mine_dIronOre=1..},gamemode=survival] run function uhcp:mine/deepslate_iron_ore
execute as @a[scores={uhcp_mine_goldOre=1..},gamemode=survival] run function uhcp:mine/gold_ore
execute as @a[scores={uhcp_mine_ironOre=1..},gamemode=survival] run function uhcp:mine/iron_ore
execute as @a[scores={uhcp_mine_rawCopperBlock=1..},gamemode=survival] run function uhcp:mine/raw_copper_block
execute as @a[scores={uhcp_mine_rawGoldBlock=1..},gamemode=survival] run function uhcp:mine/raw_gold_block
execute as @a[scores={uhcp_mine_rawIronBlock=1..},gamemode=survival] run function uhcp:mine/raw_iron_block

# Disable Ender Pearl Damage
execute if score %ender_pearl uhcp_settings matches 1 as @e[type=minecraft:ender_pearl] at @s run function uhcp:entity/ender_pearl

# Enable triggers
scoreboard players enable @a augments
scoreboard players enable @a[gamemode=survival] top
scoreboard players enable @a[gamemode=survival] testkit

# Titan Loot
execute as @e[predicate=uhcp:titans/titan_loot] at @s run function uhcp:titans/loot

# Check regenerating consumables
execute as @a[scores={uhcp_aug_regenItem=0..}] if score %time uhcp_game_time >= @s uhcp_aug_regenItem at @s run function uhcp:augments/effects/regenerate_consumables
