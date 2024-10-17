# Check button status
execute if score %lobby_item_2 uhcp_initStatus matches 1 run return run function uhcp:lobby/item/slowness_potion/reset
execute unless block ^34 ^11 ^29 minecraft:bamboo_button[powered=true] run return fail
scoreboard players set %lobby_item_2 uhcp_initStatus 1
scoreboard players operation %lobby_item_2 uhcp_itemCount = %lobby_arrows uhcp_game_time
