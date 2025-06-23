execute as @s[team=blue] run scoreboard players operation %bank uhcp_initStatus = %blue_shards ssiege_bank
execute as @s[team=red] run scoreboard players operation %bank uhcp_initStatus = %red_shards ssiege_bank

scoreboard players operation %cost uhcp_initStatus -= @s ssiege_unlocked_runesmith

# Bank can't cover cost
execute if score %bank uhcp_initStatus < %cost uhcp_initStatus run return fail

# Bank can cover cost
scoreboard players operation @s ssiege_unlocked_runesmith += %cost uhcp_initStatus
execute as @s[team=blue] run scoreboard players operation %blue_shards ssiege_bank -= %cost uhcp_initStatus
execute as @s[team=red] run scoreboard players operation %red_shards ssiege_bank -= %cost uhcp_initStatus