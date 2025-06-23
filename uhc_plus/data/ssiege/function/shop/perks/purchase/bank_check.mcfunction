execute as @s[team=blue] run scoreboard players operation %bank uhcp_initStatus = %blue_diamonds ssiege_bank
execute as @s[team=red] run scoreboard players operation %bank uhcp_initStatus = %red_diamonds ssiege_bank

scoreboard players operation %cost uhcp_initStatus -= @s ssiege_perk_aura

# Bank can't cover cost
execute if score %bank uhcp_initStatus < %cost uhcp_initStatus run return fail

# Bank can cover cost
scoreboard players operation @s ssiege_perk_aura += %cost uhcp_initStatus
execute as @s[team=blue] run scoreboard players operation %blue_diamonds ssiege_bank -= %cost uhcp_initStatus
execute as @s[team=red] run scoreboard players operation %red_diamonds ssiege_bank -= %cost uhcp_initStatus