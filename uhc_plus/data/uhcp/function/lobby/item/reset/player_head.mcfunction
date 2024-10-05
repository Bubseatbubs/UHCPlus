# Reset item initialization status
execute at @e[tag=UHCP_LobbyOrigin] unless block ^50 ^10 ^14 minecraft:polished_blackstone_button[powered=true] run return run scoreboard players set %lobby_item_7 uhcp_initStatus 0
scoreboard players remove %lobby_item_7 uhcp_itemCount 1
execute if score %lobby_item_7 uhcp_itemCount matches ..0 run scoreboard players set %lobby_item_7 uhcp_initStatus 0
