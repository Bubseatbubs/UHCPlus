# On death, drop MIN[1, 4 - CEIL(reverse_bounty/12000) + MAX(killstreak - 2, 0)] soul shards
# In simple terms, players are worth less Soul Shards the more they die, and drop increased Soul Shards if they go on a kill streak.

scoreboard players set @s ssiege_shards 4
scoreboard players operation %temp_reverse_bounty_timer ssiege_shards = @s ssiege_reverse_bounty
scoreboard players operation %temp_killstreak ssiege_shards = @s ssiege_killstreak
scoreboard players set %reverse_bounty ssiege_shards 0
scoreboard players set %kill_bounty ssiege_shards 0
scoreboard players set %REVERSE_BOUNTY_CONST ssiege_shards 12000
scoreboard players set %FLOOR_TO_CEIL_CONST ssiege_shards 1
scoreboard players set %KILLSTREAK_MIN_CONST ssiege_shards 2
execute unless score @s ssiege_reverse_bounty matches 0 store result score %reverse_bounty ssiege_shards run scoreboard players operation %temp_reverse_bounty_timer ssiege_shards /= %REVERSE_BOUNTY_CONST ssiege_shards
execute unless score @s ssiege_reverse_bounty matches 0 run scoreboard players operation %reverse_bounty ssiege_shards += %FLOOR_TO_CEIL_CONST ssiege_shards
execute if score @s ssiege_killstreak matches 3.. store result score %kill_bounty ssiege_shards run scoreboard players operation %temp_killstreak ssiege_shards -= %KILLSTREAK_MIN_CONST ssiege_shards
scoreboard players operation @s ssiege_shards -= %reverse_bounty ssiege_shards
scoreboard players operation @s ssiege_shards += %kill_bounty ssiege_shards
execute if score @s ssiege_shards matches ..0 run scoreboard players set @s ssiege_shards 1