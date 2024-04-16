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
scoreboard players enable @a augments
execute as @a[scores={augments=1..}] run function uhcp:augments/announce

# Testkit
execute as @a[gamemode=survival] if score @s testkit matches 1.. run function uhcp:testkit/verify
execute as @a[scores={uhcp_testkit=1}] run function uhcp:testkit/kit

# Milk bucket
execute as @a[tag=UHCP_MilkBucket] run function uhcp:milk_bucket/apply

# Enable triggers
scoreboard players enable @a[gamemode=survival] top
scoreboard players enable @a[gamemode=survival] testkit
