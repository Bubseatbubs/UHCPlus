# Halt day
scoreboard players set %day uhcp_initStatus 1
scoreboard players set %day_countdown uhcp_gameTime 0
gamerule doDaylightCycle false

# Calculations
execute store result score %day uhcp_gameTime run time query daytime
scoreboard players operation %day_round uhcp_gameTime = %day uhcp_gameTime
scoreboard players set %const uhcp_initStatus 1000
scoreboard players operation %day_round uhcp_gameTime /= %const uhcp_initStatus
execute unless score %day uhcp_gameTime = %day_round uhcp_gameTime run function uhcp:day/round
execute if score %day_round uhcp_gameTime matches 7000..24000 run scoreboard players remove %day_round uhcp_gameTime 24000
scoreboard players set %day_forward uhcp_gameTime 6000
scoreboard players operation %day_forward uhcp_gameTime -= %day_round uhcp_gameTime
