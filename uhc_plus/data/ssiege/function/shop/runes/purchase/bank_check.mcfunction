execute as @s[team=blue] run scoreboard players operation %bank uhcp_initStatus = %blue_shards ssiege_bank
execute as @s[team=red] run scoreboard players operation %bank uhcp_initStatus = %red_shards ssiege_bank

scoreboard players operation %cost ssiege_unlocked_runesmith -= @s ssiege_unlocked_runesmith

# Bank can't cover cost
execute if score %bank uhcp_initStatus < %cost ssiege_unlocked_runesmith run return fail

# Bank can cover cost
scoreboard players operation @s ssiege_unlocked_runesmith += %cost ssiege_unlocked_runesmith
execute as @s[team=blue] run scoreboard players operation %blue_shards ssiege_bank -= %cost ssiege_unlocked_runesmith
execute as @s[team=red] run scoreboard players operation %red_shards ssiege_bank -= %cost ssiege_unlocked_runesmith