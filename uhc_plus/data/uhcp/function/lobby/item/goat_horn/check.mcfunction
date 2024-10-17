# Check button status
execute if score %lobby_item_3 uhcp_initStatus matches 1 run return run function uhcp:lobby/item/goat_horn/reset
execute unless block ^31 ^33 ^9 minecraft:mangrove_button[powered=true] run return fail
scoreboard players set %lobby_item_3 uhcp_initStatus 1
scoreboard players operation %lobby_item_3 uhcp_itemCount = %lobby_arrows uhcp_game_time
