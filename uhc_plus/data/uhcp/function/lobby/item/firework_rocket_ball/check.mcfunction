# Check button status
execute if score %lobby_item_4 uhcp_initStatus matches 1 run return run function uhcp:lobby/item/firework_rocket_ball/reset
execute unless block ^28 ^25 ^31 minecraft:mangrove_button[powered=true] run return fail
scoreboard players set %lobby_item_4 uhcp_initStatus 1
scoreboard players operation %lobby_item_4 uhcp_itemCount = %lobby_arrows uhcp_game_time
