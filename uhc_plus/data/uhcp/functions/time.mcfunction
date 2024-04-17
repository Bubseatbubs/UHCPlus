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
scoreboard players enable @a augments

# Testkit
execute as @a[gamemode=survival] if score @s testkit matches 1.. run function uhcp:testkit/verify
execute as @a[scores={uhcp_testkit=1}] run function uhcp:testkit/kit

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

# Enable triggers
scoreboard players enable @a[gamemode=survival] top
scoreboard players enable @a[gamemode=survival] testkit
